
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int (* dao_get_spos ) (int ,unsigned int*) ;} ;
struct dao {int ctrl_blk; scalar_t__ hw; } ;


 int stub1 (int ,unsigned int*) ;

__attribute__((used)) static int dao_spdif_get_spos(struct dao *dao, unsigned int *spos)
{
 ((struct hw *)dao->hw)->dao_get_spos(dao->ctrl_blk, spos);
 return 0;
}
