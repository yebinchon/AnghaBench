
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_l2 {scalar_t__ l2_cid; scalar_t__ l2_psm; void* l2_family; int l2_bdaddr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct rfcomm_session {int initiator; } ;
typedef int bdaddr_t ;
typedef int addr ;
struct TYPE_2__ {int imtu; } ;


 void* AF_BLUETOOTH ;
 int BT_BOUND ;
 int BT_DBG (char*,int ,int ) ;
 int EINPROGRESS ;
 int ENOMEM ;
 int O_NONBLOCK ;
 int RFCOMM_PSM ;
 int bacpy (int *,int *) ;
 int batostr (int *) ;
 scalar_t__ cpu_to_le16 (int ) ;
 int kernel_bind (struct socket*,struct sockaddr*,int) ;
 int kernel_connect (struct socket*,struct sockaddr*,int,int ) ;
 int l2cap_mtu ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int rfcomm_l2sock_create (struct socket**) ;
 struct rfcomm_session* rfcomm_session_add (struct socket*,int ) ;
 int rfcomm_session_del (struct rfcomm_session*) ;
 int sock_release (struct socket*) ;

__attribute__((used)) static struct rfcomm_session *rfcomm_session_create(bdaddr_t *src, bdaddr_t *dst, int *err)
{
 struct rfcomm_session *s = ((void*)0);
 struct sockaddr_l2 addr;
 struct socket *sock;
 struct sock *sk;

 BT_DBG("%s %s", batostr(src), batostr(dst));

 *err = rfcomm_l2sock_create(&sock);
 if (*err < 0)
  return ((void*)0);

 bacpy(&addr.l2_bdaddr, src);
 addr.l2_family = AF_BLUETOOTH;
 addr.l2_psm = 0;
 addr.l2_cid = 0;
 *err = kernel_bind(sock, (struct sockaddr *) &addr, sizeof(addr));
 if (*err < 0)
  goto failed;


 sk = sock->sk;
 lock_sock(sk);
 l2cap_pi(sk)->imtu = l2cap_mtu;
 release_sock(sk);

 s = rfcomm_session_add(sock, BT_BOUND);
 if (!s) {
  *err = -ENOMEM;
  goto failed;
 }

 s->initiator = 1;

 bacpy(&addr.l2_bdaddr, dst);
 addr.l2_family = AF_BLUETOOTH;
 addr.l2_psm = cpu_to_le16(RFCOMM_PSM);
 addr.l2_cid = 0;
 *err = kernel_connect(sock, (struct sockaddr *) &addr, sizeof(addr), O_NONBLOCK);
 if (*err == 0 || *err == -EINPROGRESS)
  return s;

 rfcomm_session_del(s);
 return ((void*)0);

failed:
 sock_release(sock);
 return ((void*)0);
}
