
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct whc {TYPE_1__* dbg; } ;
struct TYPE_2__ {int di_f; int asl_f; int pzl_f; } ;


 int debugfs_remove (int ) ;
 int kfree (TYPE_1__*) ;

void whc_dbg_clean_up(struct whc *whc)
{
 if (whc->dbg) {
  debugfs_remove(whc->dbg->pzl_f);
  debugfs_remove(whc->dbg->asl_f);
  debugfs_remove(whc->dbg->di_f);
  kfree(whc->dbg);
 }
}
