
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct whc_qset {int dummy; } ;
struct whc {int n_devices; void* di_buf; int di_buf_dma; TYPE_2__* umc; void* dn_buf; int dn_buf_dma; int * gen_cmd_buf; int gen_cmd_buf_dma; int * qset_pool; int n_mmc_ies; int n_keys; scalar_t__ base; scalar_t__ base_phys; int periodic_removed_list; int * periodic_list; int periodic_work; int async_removed_list; int async_list; int async_work; int dn_work; int * workqueue; int periodic_list_wq; int async_list_wq; int cmd_wq; int mutex; int lock; } ;
struct dn_buf_entry {int dummy; } ;
struct di_buf_entry {int dummy; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_3__ {scalar_t__ end; scalar_t__ start; } ;
struct TYPE_4__ {int dev; TYPE_1__ resource; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ WHCSPARAMS ;
 int WHCSPARAMS_TO_N_DEVICES (int ) ;
 int WHCSPARAMS_TO_N_KEYS (int ) ;
 int WHCSPARAMS_TO_N_MMC_IES (int ) ;
 int WHC_GEN_CMD_DATA_LEN ;
 int WHC_N_DN_ENTRIES ;
 int asl_init (struct whc*) ;
 int * create_singlethread_workqueue (int ) ;
 int dev_dbg (int *,char*,int,int ,int ) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int * dma_pool_create (char*,int *,int,int,int ) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ ioremap (scalar_t__,scalar_t__) ;
 int le_readl (scalar_t__) ;
 int mutex_init (int *) ;
 int pzl_init (struct whc*) ;
 int request_mem_region (scalar_t__,scalar_t__,char*) ;
 int scan_async_work ;
 int scan_periodic_work ;
 int spin_lock_init (int *) ;
 int whc_clean_up (struct whc*) ;
 int whc_dn_work ;
 int whc_hw_init_di_buf (struct whc*) ;
 int whc_hw_init_dn_buf (struct whc*) ;
 int whc_hw_reset (struct whc*) ;

int whc_init(struct whc *whc)
{
 u32 whcsparams;
 int ret, i;
 resource_size_t start, len;

 spin_lock_init(&whc->lock);
 mutex_init(&whc->mutex);
 init_waitqueue_head(&whc->cmd_wq);
 init_waitqueue_head(&whc->async_list_wq);
 init_waitqueue_head(&whc->periodic_list_wq);
 whc->workqueue = create_singlethread_workqueue(dev_name(&whc->umc->dev));
 if (whc->workqueue == ((void*)0)) {
  ret = -ENOMEM;
  goto error;
 }
 INIT_WORK(&whc->dn_work, whc_dn_work);

 INIT_WORK(&whc->async_work, scan_async_work);
 INIT_LIST_HEAD(&whc->async_list);
 INIT_LIST_HEAD(&whc->async_removed_list);

 INIT_WORK(&whc->periodic_work, scan_periodic_work);
 for (i = 0; i < 5; i++)
  INIT_LIST_HEAD(&whc->periodic_list[i]);
 INIT_LIST_HEAD(&whc->periodic_removed_list);


 start = whc->umc->resource.start;
 len = whc->umc->resource.end - start + 1;
 if (!request_mem_region(start, len, "whci-hc")) {
  dev_err(&whc->umc->dev, "can't request HC region\n");
  ret = -EBUSY;
  goto error;
 }
 whc->base_phys = start;
 whc->base = ioremap(start, len);
 if (!whc->base) {
  dev_err(&whc->umc->dev, "ioremap\n");
  ret = -ENOMEM;
  goto error;
 }

 whc_hw_reset(whc);


 whcsparams = le_readl(whc->base + WHCSPARAMS);
 whc->n_devices = WHCSPARAMS_TO_N_DEVICES(whcsparams);
 whc->n_keys = WHCSPARAMS_TO_N_KEYS(whcsparams);
 whc->n_mmc_ies = WHCSPARAMS_TO_N_MMC_IES(whcsparams);

 dev_dbg(&whc->umc->dev, "N_DEVICES = %d, N_KEYS = %d, N_MMC_IES = %d\n",
  whc->n_devices, whc->n_keys, whc->n_mmc_ies);

 whc->qset_pool = dma_pool_create("qset", &whc->umc->dev,
      sizeof(struct whc_qset), 64, 0);
 if (whc->qset_pool == ((void*)0)) {
  ret = -ENOMEM;
  goto error;
 }

 ret = asl_init(whc);
 if (ret < 0)
  goto error;
 ret = pzl_init(whc);
 if (ret < 0)
  goto error;





 whc->gen_cmd_buf = dma_alloc_coherent(&whc->umc->dev, WHC_GEN_CMD_DATA_LEN,
           &whc->gen_cmd_buf_dma, GFP_KERNEL);
 if (whc->gen_cmd_buf == ((void*)0)) {
  ret = -ENOMEM;
  goto error;
 }

 whc->dn_buf = dma_alloc_coherent(&whc->umc->dev,
      sizeof(struct dn_buf_entry) * WHC_N_DN_ENTRIES,
      &whc->dn_buf_dma, GFP_KERNEL);
 if (!whc->dn_buf) {
  ret = -ENOMEM;
  goto error;
 }
 whc_hw_init_dn_buf(whc);

 whc->di_buf = dma_alloc_coherent(&whc->umc->dev,
      sizeof(struct di_buf_entry) * whc->n_devices,
      &whc->di_buf_dma, GFP_KERNEL);
 if (!whc->di_buf) {
  ret = -ENOMEM;
  goto error;
 }
 whc_hw_init_di_buf(whc);

 return 0;

error:
 whc_clean_up(whc);
 return ret;
}
