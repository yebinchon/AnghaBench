
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccid_operations {int * ccid_hc_rx_slab; int ccid_name; int ccid_id; int * ccid_hc_tx_slab; int ccid_hc_tx_slab_name; int ccid_hc_tx_obj_size; int ccid_hc_rx_slab_name; int ccid_hc_rx_obj_size; } ;


 int ENOBUFS ;
 void* ccid_kmem_cache_create (int ,int ,char*,int ) ;
 int ccid_kmem_cache_destroy (int *) ;
 int pr_info (char*,int ,int ) ;

__attribute__((used)) static int ccid_activate(struct ccid_operations *ccid_ops)
{
 int err = -ENOBUFS;

 ccid_ops->ccid_hc_rx_slab =
   ccid_kmem_cache_create(ccid_ops->ccid_hc_rx_obj_size,
            ccid_ops->ccid_hc_rx_slab_name,
            "ccid%u_hc_rx_sock",
            ccid_ops->ccid_id);
 if (ccid_ops->ccid_hc_rx_slab == ((void*)0))
  goto out;

 ccid_ops->ccid_hc_tx_slab =
   ccid_kmem_cache_create(ccid_ops->ccid_hc_tx_obj_size,
            ccid_ops->ccid_hc_tx_slab_name,
            "ccid%u_hc_tx_sock",
            ccid_ops->ccid_id);
 if (ccid_ops->ccid_hc_tx_slab == ((void*)0))
  goto out_free_rx_slab;

 pr_info("CCID: Activated CCID %d (%s)\n",
  ccid_ops->ccid_id, ccid_ops->ccid_name);
 err = 0;
out:
 return err;
out_free_rx_slab:
 ccid_kmem_cache_destroy(ccid_ops->ccid_hc_rx_slab);
 ccid_ops->ccid_hc_rx_slab = ((void*)0);
 goto out;
}
