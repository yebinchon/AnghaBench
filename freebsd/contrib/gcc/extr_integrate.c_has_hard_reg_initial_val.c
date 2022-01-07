
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct initial_value_struct {int num_entries; TYPE_1__* entries; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {struct initial_value_struct* hard_reg_initial_vals; } ;
struct TYPE_3__ {int pseudo; int hard_reg; } ;


 int GET_MODE (int ) ;
 int NULL_RTX ;
 unsigned int REGNO (int ) ;
 TYPE_2__* cfun ;

rtx
has_hard_reg_initial_val (enum machine_mode mode, unsigned int regno)
{
  struct initial_value_struct *ivs;
  int i;

  ivs = cfun->hard_reg_initial_vals;
  if (ivs != 0)
    for (i = 0; i < ivs->num_entries; i++)
      if (GET_MODE (ivs->entries[i].hard_reg) == mode
   && REGNO (ivs->entries[i].hard_reg) == regno)
 return ivs->entries[i].pseudo;

  return NULL_RTX;
}
