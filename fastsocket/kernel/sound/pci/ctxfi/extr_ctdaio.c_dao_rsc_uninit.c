
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw {int (* dao_put_ctrl_blk ) (int *) ;} ;
struct TYPE_3__ {size_t msr; } ;
struct TYPE_4__ {TYPE_1__ rscl; } ;
struct dao {TYPE_2__ daio; int * ctrl_blk; scalar_t__ hw; scalar_t__* imappers; } ;


 int daio_rsc_uninit (TYPE_2__*) ;
 int dao_clear_left_input (struct dao*) ;
 int dao_clear_right_input (struct dao*) ;
 int kfree (scalar_t__*) ;
 int stub1 (int *) ;

__attribute__((used)) static int dao_rsc_uninit(struct dao *dao)
{
 if (dao->imappers) {
  if (dao->imappers[0])
   dao_clear_left_input(dao);

  if (dao->imappers[dao->daio.rscl.msr])
   dao_clear_right_input(dao);

  kfree(dao->imappers);
  dao->imappers = ((void*)0);
 }
 ((struct hw *)dao->hw)->dao_put_ctrl_blk(dao->ctrl_blk);
 dao->hw = dao->ctrl_blk = ((void*)0);
 daio_rsc_uninit(&dao->daio);

 return 0;
}
