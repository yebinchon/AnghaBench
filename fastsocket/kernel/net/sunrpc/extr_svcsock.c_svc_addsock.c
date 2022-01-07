
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int xpt_list; int xpt_flags; } ;
struct svc_sock {TYPE_2__ sk_xprt; int sk_sock; } ;
struct svc_serv {int sv_lock; int sv_permsocks; } ;
struct socket {scalar_t__ state; TYPE_1__* sk; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ sk_family; scalar_t__ sk_protocol; } ;


 int EAFNOSUPPORT ;
 int EISCONN ;
 int ENOENT ;
 int EPROTONOSUPPORT ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ SS_UNCONNECTED ;
 int SVC_SOCK_DEFAULTS ;
 int THIS_MODULE ;
 int XPT_TEMP ;
 int clear_bit (int ,int *) ;
 scalar_t__ kernel_getsockname (int ,struct sockaddr*,int*) ;
 int list_add (int *,int *) ;
 int module_put (int ) ;
 struct socket* sockfd_lookup (int const,int*) ;
 int sockfd_put (struct socket*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int svc_one_sock_name (struct svc_sock*,char*,size_t const) ;
 struct svc_sock* svc_setup_socket (struct svc_serv*,struct socket*,int*,int ) ;
 int svc_xprt_received (TYPE_2__*) ;
 int svc_xprt_set_local (TYPE_2__*,struct sockaddr*,int) ;
 int try_module_get (int ) ;

int svc_addsock(struct svc_serv *serv, const int fd, char *name_return,
  const size_t len)
{
 int err = 0;
 struct socket *so = sockfd_lookup(fd, &err);
 struct svc_sock *svsk = ((void*)0);

 if (!so)
  return err;
 if ((so->sk->sk_family != PF_INET) && (so->sk->sk_family != PF_INET6))
  err = -EAFNOSUPPORT;
 else if (so->sk->sk_protocol != IPPROTO_TCP &&
     so->sk->sk_protocol != IPPROTO_UDP)
  err = -EPROTONOSUPPORT;
 else if (so->state > SS_UNCONNECTED)
  err = -EISCONN;
 else {
  if (!try_module_get(THIS_MODULE))
   err = -ENOENT;
  else
   svsk = svc_setup_socket(serv, so, &err,
      SVC_SOCK_DEFAULTS);
  if (svsk) {
   struct sockaddr_storage addr;
   struct sockaddr *sin = (struct sockaddr *)&addr;
   int salen;
   if (kernel_getsockname(svsk->sk_sock, sin, &salen) == 0)
    svc_xprt_set_local(&svsk->sk_xprt, sin, salen);
   clear_bit(XPT_TEMP, &svsk->sk_xprt.xpt_flags);
   spin_lock_bh(&serv->sv_lock);
   list_add(&svsk->sk_xprt.xpt_list, &serv->sv_permsocks);
   spin_unlock_bh(&serv->sv_lock);
   svc_xprt_received(&svsk->sk_xprt);
   err = 0;
  } else
   module_put(THIS_MODULE);
 }
 if (err) {
  sockfd_put(so);
  return err;
 }
 return svc_one_sock_name(svsk, name_return, len);
}
