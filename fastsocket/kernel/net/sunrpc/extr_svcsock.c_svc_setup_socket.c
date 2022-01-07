
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_sock {struct sock* sk_sk; struct socket* sk_sock; int sk_owspace; int sk_odata; int sk_ostate; } ;
struct svc_serv {int sv_max_mesg; } ;
struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {int sk_write_space; int sk_data_ready; int sk_state_change; struct svc_sock* sk_user_data; int sk_protocol; int sk_family; } ;
struct TYPE_2__ {int sport; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SOCK_DGRAM ;
 int SVC_SOCK_ANONYMOUS ;
 int dprintk (char*,...) ;
 TYPE_1__* inet_sk (struct sock*) ;
 int kfree (struct svc_sock*) ;
 struct svc_sock* kzalloc (int,int ) ;
 int ntohs (int ) ;
 int svc_register (struct svc_serv*,int ,int ,int ) ;
 int svc_sock_setbufsize (struct socket*,int,int) ;
 int svc_tcp_init (struct svc_sock*,struct svc_serv*) ;
 int svc_udp_init (struct svc_sock*,struct svc_serv*) ;

__attribute__((used)) static struct svc_sock *svc_setup_socket(struct svc_serv *serv,
      struct socket *sock,
      int *errp, int flags)
{
 struct svc_sock *svsk;
 struct sock *inet;
 int pmap_register = !(flags & SVC_SOCK_ANONYMOUS);

 dprintk("svc: svc_setup_socket %p\n", sock);
 if (!(svsk = kzalloc(sizeof(*svsk), GFP_KERNEL))) {
  *errp = -ENOMEM;
  return ((void*)0);
 }

 inet = sock->sk;


 if (*errp >= 0 && pmap_register)
  *errp = svc_register(serv, inet->sk_family, inet->sk_protocol,
         ntohs(inet_sk(inet)->sport));

 if (*errp < 0) {
  kfree(svsk);
  return ((void*)0);
 }

 inet->sk_user_data = svsk;
 svsk->sk_sock = sock;
 svsk->sk_sk = inet;
 svsk->sk_ostate = inet->sk_state_change;
 svsk->sk_odata = inet->sk_data_ready;
 svsk->sk_owspace = inet->sk_write_space;


 if (sock->type == SOCK_DGRAM)
  svc_udp_init(svsk, serv);
 else {



  svc_sock_setbufsize(svsk->sk_sock, 4 * serv->sv_max_mesg,
     4 * serv->sv_max_mesg);
  svc_tcp_init(svsk, serv);
 }

 dprintk("svc: svc_setup_socket created %p (inet %p)\n",
    svsk, svsk->sk_sk);

 return svsk;
}
