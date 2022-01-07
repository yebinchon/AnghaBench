
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct initial_value_struct {int num_entries; TYPE_1__* entries; } ;
struct function {struct initial_value_struct* hard_reg_initial_vals; } ;
typedef int rtx ;
struct TYPE_2__ {int hard_reg; int pseudo; } ;


 int NULL_RTX ;
 scalar_t__ rtx_equal_p (int ,int ) ;

rtx
get_hard_reg_initial_reg (struct function *fun, rtx reg)
{
  struct initial_value_struct *ivs = fun->hard_reg_initial_vals;
  int i;

  if (ivs == 0)
    return NULL_RTX;

  for (i = 0; i < ivs->num_entries; i++)
    if (rtx_equal_p (ivs->entries[i].pseudo, reg))
      return ivs->entries[i].hard_reg;

  return NULL_RTX;
}
