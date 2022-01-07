
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hw {int (* dao_get_ctrl_blk ) (int *) ;int (* daio_mgr_commit_write ) (struct hw*,int ) ;int (* daio_mgr_enb_dao ) (int ,int ) ;int (* daio_mgr_dao_init ) (int ,int ,unsigned int) ;int (* daio_mgr_dsb_dao ) (int ,int ) ;} ;
struct TYPE_5__ {int type; } ;
struct dao {TYPE_2__ daio; int * imappers; int ctrl_blk; struct hw* hw; struct daio_mgr* mgr; int * ops; } ;
struct TYPE_4__ {int ctrl_blk; struct hw* hw; } ;
struct daio_mgr {TYPE_1__ mgr; } ;
struct daio_desc {int msr; int passthru; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int daio_device_index (int ,struct hw*) ;
 int daio_rsc_init (TYPE_2__*,struct daio_desc const*,struct hw*) ;
 int daio_rsc_uninit (TYPE_2__*) ;
 int dao_ops ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int stub1 (int *) ;
 int stub2 (int ,int ) ;
 int stub3 (struct hw*,int ) ;
 int stub4 (int ,int ,unsigned int) ;
 int stub5 (int ,int ) ;
 int stub6 (struct hw*,int ) ;

__attribute__((used)) static int dao_rsc_init(struct dao *dao,
   const struct daio_desc *desc,
   struct daio_mgr *mgr)
{
 struct hw *hw = mgr->mgr.hw;
 unsigned int conf;
 int err;

 err = daio_rsc_init(&dao->daio, desc, mgr->mgr.hw);
 if (err)
  return err;

 dao->imappers = kzalloc(sizeof(void *)*desc->msr*2, GFP_KERNEL);
 if (!dao->imappers) {
  err = -ENOMEM;
  goto error1;
 }
 dao->ops = &dao_ops;
 dao->mgr = mgr;
 dao->hw = hw;
 err = hw->dao_get_ctrl_blk(&dao->ctrl_blk);
 if (err)
  goto error2;

 hw->daio_mgr_dsb_dao(mgr->mgr.ctrl_blk,
   daio_device_index(dao->daio.type, hw));
 hw->daio_mgr_commit_write(hw, mgr->mgr.ctrl_blk);

 conf = (desc->msr & 0x7) | (desc->passthru << 3);
 hw->daio_mgr_dao_init(mgr->mgr.ctrl_blk,
   daio_device_index(dao->daio.type, hw), conf);
 hw->daio_mgr_enb_dao(mgr->mgr.ctrl_blk,
   daio_device_index(dao->daio.type, hw));
 hw->daio_mgr_commit_write(hw, mgr->mgr.ctrl_blk);

 return 0;

error2:
 kfree(dao->imappers);
 dao->imappers = ((void*)0);
error1:
 daio_rsc_uninit(&dao->daio);
 return err;
}
