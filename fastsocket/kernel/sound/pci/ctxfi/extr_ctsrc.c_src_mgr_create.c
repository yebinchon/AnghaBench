
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl_blk; } ;
struct src_mgr {TYPE_1__ mgr; int commit_write; int src_disable; int src_enable; int src_enable_s; int put_src; int get_src; int mgr_lock; } ;
struct hw {int (* src_mgr_commit_write ) (void*,int ) ;int (* src_mgr_dsb_src ) (int ,int) ;int (* src_dirty_conj_mask ) () ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SRC ;
 int SRC_RESOURCE_NUM ;
 int conj_mask ;
 int get_src_rsc ;
 int kfree (struct src_mgr*) ;
 struct src_mgr* kzalloc (int,int ) ;
 int put_src_rsc ;
 int rsc_mgr_init (TYPE_1__*,int ,int ,void*) ;
 int spin_lock_init (int *) ;
 int src_disable ;
 int src_enable ;
 int src_enable_s ;
 int src_mgr_commit_write ;
 int stub1 () ;
 int stub2 (int ,int) ;
 int stub3 (void*,int ) ;

int src_mgr_create(void *hw, struct src_mgr **rsrc_mgr)
{
 int err, i;
 struct src_mgr *src_mgr;

 *rsrc_mgr = ((void*)0);
 src_mgr = kzalloc(sizeof(*src_mgr), GFP_KERNEL);
 if (!src_mgr)
  return -ENOMEM;

 err = rsc_mgr_init(&src_mgr->mgr, SRC, SRC_RESOURCE_NUM, hw);
 if (err)
  goto error1;

 spin_lock_init(&src_mgr->mgr_lock);
 conj_mask = ((struct hw *)hw)->src_dirty_conj_mask();

 src_mgr->get_src = get_src_rsc;
 src_mgr->put_src = put_src_rsc;
 src_mgr->src_enable_s = src_enable_s;
 src_mgr->src_enable = src_enable;
 src_mgr->src_disable = src_disable;
 src_mgr->commit_write = src_mgr_commit_write;


 for (i = 0; i < 256; i++)
  ((struct hw *)hw)->src_mgr_dsb_src(src_mgr->mgr.ctrl_blk, i);

 ((struct hw *)hw)->src_mgr_commit_write(hw, src_mgr->mgr.ctrl_blk);

 *rsrc_mgr = src_mgr;

 return 0;

error1:
 kfree(src_mgr);
 return err;
}
