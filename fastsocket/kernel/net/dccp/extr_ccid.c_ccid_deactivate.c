
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccid_operations {int ccid_name; int ccid_id; int * ccid_hc_rx_slab; int * ccid_hc_tx_slab; } ;


 int ccid_kmem_cache_destroy (int *) ;
 int pr_info (char*,int ,int ) ;

__attribute__((used)) static void ccid_deactivate(struct ccid_operations *ccid_ops)
{
 ccid_kmem_cache_destroy(ccid_ops->ccid_hc_tx_slab);
 ccid_ops->ccid_hc_tx_slab = ((void*)0);
 ccid_kmem_cache_destroy(ccid_ops->ccid_hc_rx_slab);
 ccid_ops->ccid_hc_rx_slab = ((void*)0);

 pr_info("CCID: Deactivated CCID %d (%s)\n",
  ccid_ops->ccid_id, ccid_ops->ccid_name);
}
