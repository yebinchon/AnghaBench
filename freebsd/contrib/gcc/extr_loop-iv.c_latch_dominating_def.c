
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct df_reg_info {struct df_ref* reg_chain; } ;
struct df_ref {struct df_ref* next_reg; } ;
struct df_rd_bb_info {int out; } ;
typedef int rtx ;
struct TYPE_3__ {int latch; } ;


 struct df_rd_bb_info* DF_RD_BB_INFO (int ,int ) ;
 int DF_REF_BB (struct df_ref*) ;
 int DF_REF_ID (struct df_ref*) ;
 struct df_reg_info* DF_REG_DEF_GET (int ,unsigned int) ;
 unsigned int REGNO (int ) ;
 int bitmap_bit_p (int ,int ) ;
 TYPE_1__* current_loop ;
 int df ;
 int just_once_each_iteration_p (TYPE_1__*,int ) ;

__attribute__((used)) static bool
latch_dominating_def (rtx reg, struct df_ref **def)
{
  struct df_ref *single_rd = ((void*)0), *adef;
  unsigned regno = REGNO (reg);
  struct df_reg_info *reg_info = DF_REG_DEF_GET (df, regno);
  struct df_rd_bb_info *bb_info = DF_RD_BB_INFO (df, current_loop->latch);

  for (adef = reg_info->reg_chain; adef; adef = adef->next_reg)
    {
      if (!bitmap_bit_p (bb_info->out, DF_REF_ID (adef)))
 continue;


      if (single_rd)
 return 0;

      if (!just_once_each_iteration_p (current_loop, DF_REF_BB (adef)))
 return 0;

      single_rd = adef;
    }

  *def = single_rd;
  return 1;
}
