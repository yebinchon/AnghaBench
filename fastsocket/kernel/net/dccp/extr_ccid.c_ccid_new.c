
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct ccid_operations {scalar_t__ (* ccid_hc_rx_init ) (struct ccid*,struct sock*) ;scalar_t__ (* ccid_hc_tx_init ) (struct ccid*,struct sock*) ;int ccid_hc_tx_slab; int ccid_hc_rx_slab; int ccid_hc_tx_obj_size; int ccid_hc_rx_obj_size; } ;
struct ccid {struct ccid_operations* ccid_ops; } ;


 struct ccid_operations* ccid_by_number (int const) ;
 int gfp_any () ;
 struct ccid* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct ccid*) ;
 int memset (struct ccid*,int ,int ) ;
 scalar_t__ stub1 (struct ccid*,struct sock*) ;
 scalar_t__ stub2 (struct ccid*,struct sock*) ;

struct ccid *ccid_new(const u8 id, struct sock *sk, bool rx)
{
 struct ccid_operations *ccid_ops = ccid_by_number(id);
 struct ccid *ccid = ((void*)0);

 if (ccid_ops == ((void*)0))
  goto out;

 ccid = kmem_cache_alloc(rx ? ccid_ops->ccid_hc_rx_slab :
         ccid_ops->ccid_hc_tx_slab, gfp_any());
 if (ccid == ((void*)0))
  goto out;
 ccid->ccid_ops = ccid_ops;
 if (rx) {
  memset(ccid + 1, 0, ccid_ops->ccid_hc_rx_obj_size);
  if (ccid->ccid_ops->ccid_hc_rx_init != ((void*)0) &&
      ccid->ccid_ops->ccid_hc_rx_init(ccid, sk) != 0)
   goto out_free_ccid;
 } else {
  memset(ccid + 1, 0, ccid_ops->ccid_hc_tx_obj_size);
  if (ccid->ccid_ops->ccid_hc_tx_init != ((void*)0) &&
      ccid->ccid_ops->ccid_hc_tx_init(ccid, sk) != 0)
   goto out_free_ccid;
 }
out:
 return ccid;
out_free_ccid:
 kmem_cache_free(rx ? ccid_ops->ccid_hc_rx_slab :
   ccid_ops->ccid_hc_tx_slab, ccid);
 ccid = ((void*)0);
 goto out;
}
