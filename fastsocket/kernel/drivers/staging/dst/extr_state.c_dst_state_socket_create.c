
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct TYPE_4__ {int sa_family; } ;
struct dst_network_ctl {int proto; int type; TYPE_2__ addr; } ;
struct dst_state {struct socket* read_socket; struct socket* socket; struct dst_network_ctl ctl; } ;
struct TYPE_3__ {int sk_allocation; int sk_rcvtimeo; int sk_sndtimeo; } ;


 int DST_DEFAULT_TIMEO ;
 int GFP_NOIO ;
 int msecs_to_jiffies (int ) ;
 int sock_create (int ,int ,int ,struct socket**) ;

int dst_state_socket_create(struct dst_state *st)
{
 int err;
 struct socket *sock;
 struct dst_network_ctl *ctl = &st->ctl;

 err = sock_create(ctl->addr.sa_family, ctl->type, ctl->proto, &sock);
 if (err < 0)
  return err;

 sock->sk->sk_sndtimeo = sock->sk->sk_rcvtimeo =
  msecs_to_jiffies(DST_DEFAULT_TIMEO);
 sock->sk->sk_allocation = GFP_NOIO;

 st->socket = st->read_socket = sock;
 return 0;
}
