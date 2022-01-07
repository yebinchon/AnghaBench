
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sin_port; } ;
struct TYPE_5__ {int sa_family; } ;
union sctp_addr {TYPE_3__ v4; TYPE_2__ sa; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct sctp_sock {struct sctp_endpoint* ep; } ;
struct sctp_bind_addr {int port; int address_list; } ;
struct TYPE_4__ {struct sctp_bind_addr bind_addr; } ;
struct sctp_endpoint {TYPE_1__ base; } ;
struct sctp_af {int sockaddr_len; int (* addr_valid ) (union sctp_addr*,struct sctp_sock*,int *) ;} ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int EINVAL ;
 int SCTP_DEBUG_PRINTK (char*,struct sock*,struct sockaddr*,int) ;
 scalar_t__ htons (int ) ;
 scalar_t__ list_empty (int *) ;
 int sctp_bindx_add (struct sock*,struct sockaddr*,int) ;
 int sctp_del_bind_addr (struct sctp_bind_addr*,union sctp_addr*) ;
 struct sctp_af* sctp_get_af_specific (int ) ;
 scalar_t__ sctp_list_single_entry (int *) ;
 struct sctp_sock* sctp_sk (struct sock*) ;
 int stub1 (union sctp_addr*,struct sctp_sock*,int *) ;

__attribute__((used)) static int sctp_bindx_rem(struct sock *sk, struct sockaddr *addrs, int addrcnt)
{
 struct sctp_sock *sp = sctp_sk(sk);
 struct sctp_endpoint *ep = sp->ep;
 int cnt;
 struct sctp_bind_addr *bp = &ep->base.bind_addr;
 int retval = 0;
 void *addr_buf;
 union sctp_addr *sa_addr;
 struct sctp_af *af;

 SCTP_DEBUG_PRINTK("sctp_bindx_rem (sk: %p, addrs: %p, addrcnt: %d)\n",
     sk, addrs, addrcnt);

 addr_buf = addrs;
 for (cnt = 0; cnt < addrcnt; cnt++) {




  if (list_empty(&bp->address_list) ||
      (sctp_list_single_entry(&bp->address_list))) {
   retval = -EBUSY;
   goto err_bindx_rem;
  }

  sa_addr = (union sctp_addr *)addr_buf;
  af = sctp_get_af_specific(sa_addr->sa.sa_family);
  if (!af) {
   retval = -EINVAL;
   goto err_bindx_rem;
  }

  if (!af->addr_valid(sa_addr, sp, ((void*)0))) {
   retval = -EADDRNOTAVAIL;
   goto err_bindx_rem;
  }

  if (sa_addr->v4.sin_port &&
      sa_addr->v4.sin_port != htons(bp->port)) {
   retval = -EINVAL;
   goto err_bindx_rem;
  }

  if (!sa_addr->v4.sin_port)
   sa_addr->v4.sin_port = htons(bp->port);
  retval = sctp_del_bind_addr(bp, sa_addr);

  addr_buf += af->sockaddr_len;
err_bindx_rem:
  if (retval < 0) {

   if (cnt > 0)
    sctp_bindx_add(sk, addrs, cnt);
   return retval;
  }
 }

 return retval;
}
