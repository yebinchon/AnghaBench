
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int x25_addr; } ;
struct x25_sock {int neighbour; int state; int dest_addr; TYPE_2__ source_addr; int lci; int facilities; } ;
struct x25_route {int dev; } ;
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sockaddr_x25 {scalar_t__ sx25_family; int sx25_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct TYPE_3__ {int x25_addr; } ;


 scalar_t__ AF_X25 ;
 int ECONNREFUSED ;
 int EINPROGRESS ;
 int EINVAL ;
 int EISCONN ;
 int ENETUNREACH ;
 int O_NONBLOCK ;
 int SOCK_ZAPPED ;
 void* SS_CONNECTED ;
 scalar_t__ SS_CONNECTING ;
 void* SS_UNCONNECTED ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ TCP_ESTABLISHED ;
 scalar_t__ TCP_SYN_SENT ;
 int X25_ADDR_LEN ;
 int X25_CALL_REQUEST ;
 int X25_STATE_1 ;
 int lock_sock (struct sock*) ;
 int memset (TYPE_2__*,char,int ) ;
 TYPE_1__ null_x25_address ;
 int release_sock (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int strcmp (int ,int ) ;
 int x25_get_neigh (int ) ;
 struct x25_route* x25_get_route (int *) ;
 int x25_limit_facilities (int *,int ) ;
 int x25_neigh_put (int ) ;
 int x25_new_lci (int ) ;
 int x25_route_put (struct x25_route*) ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_start_heartbeat (struct sock*) ;
 int x25_start_t21timer (struct sock*) ;
 int x25_wait_for_connection_establishment (struct sock*) ;
 int x25_write_internal (struct sock*,int ) ;

__attribute__((used)) static int x25_connect(struct socket *sock, struct sockaddr *uaddr,
         int addr_len, int flags)
{
 struct sock *sk = sock->sk;
 struct x25_sock *x25 = x25_sk(sk);
 struct sockaddr_x25 *addr = (struct sockaddr_x25 *)uaddr;
 struct x25_route *rt;
 int rc = 0;

 lock_sock(sk);
 if (sk->sk_state == TCP_ESTABLISHED && sock->state == SS_CONNECTING) {
  sock->state = SS_CONNECTED;
  goto out;
 }

 rc = -ECONNREFUSED;
 if (sk->sk_state == TCP_CLOSE && sock->state == SS_CONNECTING) {
  sock->state = SS_UNCONNECTED;
  goto out;
 }

 rc = -EISCONN;
 if (sk->sk_state == TCP_ESTABLISHED)
  goto out;

 sk->sk_state = TCP_CLOSE;
 sock->state = SS_UNCONNECTED;

 rc = -EINVAL;
 if (addr_len != sizeof(struct sockaddr_x25) ||
     addr->sx25_family != AF_X25)
  goto out;

 rc = -ENETUNREACH;
 rt = x25_get_route(&addr->sx25_addr);
 if (!rt)
  goto out;

 x25->neighbour = x25_get_neigh(rt->dev);
 if (!x25->neighbour)
  goto out_put_route;

 x25_limit_facilities(&x25->facilities, x25->neighbour);

 x25->lci = x25_new_lci(x25->neighbour);
 if (!x25->lci)
  goto out_put_neigh;

 rc = -EINVAL;
 if (sock_flag(sk, SOCK_ZAPPED))
  goto out_put_neigh;

 if (!strcmp(x25->source_addr.x25_addr, null_x25_address.x25_addr))
  memset(&x25->source_addr, '\0', X25_ADDR_LEN);

 x25->dest_addr = addr->sx25_addr;


 sock->state = SS_CONNECTING;
 sk->sk_state = TCP_SYN_SENT;

 x25->state = X25_STATE_1;

 x25_write_internal(sk, X25_CALL_REQUEST);

 x25_start_heartbeat(sk);
 x25_start_t21timer(sk);


 rc = -EINPROGRESS;
 if (sk->sk_state != TCP_ESTABLISHED && (flags & O_NONBLOCK))
  goto out_put_neigh;

 rc = x25_wait_for_connection_establishment(sk);
 if (rc)
  goto out_put_neigh;

 sock->state = SS_CONNECTED;
 rc = 0;
out_put_neigh:
 if (rc)
  x25_neigh_put(x25->neighbour);
out_put_route:
 x25_route_put(rt);
out:
 release_sock(sk);
 return rc;
}
