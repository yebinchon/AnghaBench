
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc_mgr {int ctrl_blk; struct hw* hw; } ;
struct imapper {int addr; int next; int slot; } ;
struct hw {int (* daio_mgr_commit_write ) (struct hw*,int ) ;int (* daio_mgr_set_imapaddr ) (int ,int ) ;int (* daio_mgr_set_imapnxt ) (int ,int ) ;int (* daio_mgr_set_imaparc ) (int ,int ) ;} ;
struct daio_mgr {struct rsc_mgr mgr; } ;


 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (struct hw*,int ) ;

__attribute__((used)) static int daio_map_op(void *data, struct imapper *entry)
{
 struct rsc_mgr *mgr = &((struct daio_mgr *)data)->mgr;
 struct hw *hw = mgr->hw;

 hw->daio_mgr_set_imaparc(mgr->ctrl_blk, entry->slot);
 hw->daio_mgr_set_imapnxt(mgr->ctrl_blk, entry->next);
 hw->daio_mgr_set_imapaddr(mgr->ctrl_blk, entry->addr);
 hw->daio_mgr_commit_write(mgr->hw, mgr->ctrl_blk);

 return 0;
}
