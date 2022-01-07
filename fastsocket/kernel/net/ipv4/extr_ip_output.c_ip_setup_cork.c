
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int sk_allocation; } ;
struct TYPE_5__ {int path; TYPE_1__* dev; } ;
struct TYPE_6__ {TYPE_2__ dst; } ;
struct rtable {TYPE_3__ u; } ;
struct ipcm_cookie {int addr; struct ip_options* opt; } ;
struct ip_options {scalar_t__ optlen; } ;
struct inet_sock {scalar_t__ pmtudisc; } ;
struct inet_cork {scalar_t__ length; TYPE_2__* dst; int fragsize; int addr; int flags; int * opt; } ;
struct TYPE_4__ {int mtu; } ;


 int EFAULT ;
 int ENOBUFS ;
 int IPCORK_OPT ;
 scalar_t__ IP_PMTUDISC_PROBE ;
 int dst_mtu (int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,struct ip_options*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ip_setup_cork(struct sock *sk, struct inet_cork *cork,
    struct ipcm_cookie *ipc, struct rtable **rtp)
{
 struct inet_sock *inet = inet_sk(sk);
 struct ip_options *opt;
 struct rtable *rt;




 opt = ipc->opt;
 if (opt) {
  if (cork->opt == ((void*)0)) {
   cork->opt = kmalloc(sizeof(struct ip_options) + 40,
         sk->sk_allocation);
   if (unlikely(cork->opt == ((void*)0)))
    return -ENOBUFS;
  }
  memcpy(cork->opt, opt, sizeof(struct ip_options) + opt->optlen);
  cork->flags |= IPCORK_OPT;
  cork->addr = ipc->addr;
 }
 rt = *rtp;
 if (unlikely(!rt))
  return -EFAULT;



 *rtp = ((void*)0);
 cork->fragsize = inet->pmtudisc == IP_PMTUDISC_PROBE ?
    rt->u.dst.dev->mtu : dst_mtu(rt->u.dst.path);
 cork->dst = &rt->u.dst;
 cork->length = 0;

 return 0;
}
