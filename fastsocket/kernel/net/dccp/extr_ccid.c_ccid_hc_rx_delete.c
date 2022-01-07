
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct ccid {TYPE_1__* ccid_ops; } ;
struct TYPE_2__ {int ccid_hc_rx_slab; int (* ccid_hc_rx_exit ) (struct sock*) ;} ;


 int kmem_cache_free (int ,struct ccid*) ;
 int stub1 (struct sock*) ;

void ccid_hc_rx_delete(struct ccid *ccid, struct sock *sk)
{
 if (ccid != ((void*)0)) {
  if (ccid->ccid_ops->ccid_hc_rx_exit != ((void*)0))
   ccid->ccid_ops->ccid_hc_rx_exit(sk);
  kmem_cache_free(ccid->ccid_ops->ccid_hc_rx_slab, ccid);
 }
}
