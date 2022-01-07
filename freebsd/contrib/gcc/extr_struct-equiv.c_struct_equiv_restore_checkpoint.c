
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct struct_equiv_checkpoint {size_t local_count; scalar_t__ version; int input_valid; int input_count; int y_start; int x_start; int ninsns; } ;
struct TYPE_2__ {size_t local_count; scalar_t__ version; int input_valid; int input_count; int y_start; int x_start; int ninsns; } ;
struct equiv_info {int need_rerun; TYPE_1__ cur; int * y_local; int y_local_live; int * x_local; int x_local_live; } ;


 int REGNO (int ) ;
 scalar_t__ REGNO_REG_SET_P (int ,int ) ;
 int assign_reg_reg_set (int ,int ,int ) ;

__attribute__((used)) static void
struct_equiv_restore_checkpoint (struct struct_equiv_checkpoint *p,
     struct equiv_info *info)
{
  info->cur.ninsns = p->ninsns;
  info->cur.x_start = p->x_start;
  info->cur.y_start = p->y_start;
  info->cur.input_count = p->input_count;
  info->cur.input_valid = p->input_valid;
  while (info->cur.local_count > p->local_count)
    {
      info->cur.local_count--;
      info->cur.version--;
      if (REGNO_REG_SET_P (info->x_local_live,
      REGNO (info->x_local[info->cur.local_count])))
 {
   assign_reg_reg_set (info->x_local_live,
         info->x_local[info->cur.local_count], 0);
   assign_reg_reg_set (info->y_local_live,
         info->y_local[info->cur.local_count], 0);
   info->cur.version--;
 }
    }
  if (info->cur.version != p->version)
    info->need_rerun = 1;
}
