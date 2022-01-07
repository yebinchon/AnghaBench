
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_scan_problem_data {int reg_pool; } ;
struct df_reg_info {int dummy; } ;
struct df_ref_info {unsigned int regs_size; unsigned int regs_inited; struct df_reg_info** regs; } ;
struct dataflow {scalar_t__ problem_data; } ;


 unsigned int max_reg_num () ;
 int memset (struct df_reg_info*,int ,int) ;
 struct df_reg_info* pool_alloc (int ) ;
 struct df_reg_info** xrealloc (struct df_reg_info**,unsigned int) ;

__attribute__((used)) static void
df_grow_reg_info (struct dataflow *dflow, struct df_ref_info *ref_info)
{
  unsigned int max_reg = max_reg_num ();
  unsigned int new_size = max_reg;
  struct df_scan_problem_data *problem_data
    = (struct df_scan_problem_data *) dflow->problem_data;
  unsigned int i;

  if (ref_info->regs_size < new_size)
    {
      new_size += new_size / 4;
      ref_info->regs = xrealloc (ref_info->regs,
     new_size *sizeof (struct df_reg_info*));
      ref_info->regs_size = new_size;
    }

  for (i = ref_info->regs_inited; i < max_reg; i++)
    {
      struct df_reg_info *reg_info = pool_alloc (problem_data->reg_pool);
      memset (reg_info, 0, sizeof (struct df_reg_info));
      ref_info->regs[i] = reg_info;
    }

  ref_info->regs_inited = max_reg;
}
