
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int first_reg; int size; int mode; int birth; int freq; int n_refs; int alternate_class; int min_class; int n_throwing_calls_crossed; int n_calls_crossed; } ;


 int REG_FREQ (int) ;
 int REG_N_CALLS_CROSSED (int) ;
 int REG_N_REFS (int) ;
 int REG_N_THROWING_CALLS_CROSSED (int) ;
 int next_qty ;
 TYPE_1__* qty ;
 int reg_alternate_class (int) ;
 int* reg_next_in_qty ;
 scalar_t__* reg_offset ;
 int reg_preferred_class (int) ;
 int* reg_qty ;

__attribute__((used)) static void
alloc_qty (int regno, enum machine_mode mode, int size, int birth)
{
  int qtyno = next_qty++;

  reg_qty[regno] = qtyno;
  reg_offset[regno] = 0;
  reg_next_in_qty[regno] = -1;

  qty[qtyno].first_reg = regno;
  qty[qtyno].size = size;
  qty[qtyno].mode = mode;
  qty[qtyno].birth = birth;
  qty[qtyno].n_calls_crossed = REG_N_CALLS_CROSSED (regno);
  qty[qtyno].n_throwing_calls_crossed = REG_N_THROWING_CALLS_CROSSED (regno);
  qty[qtyno].min_class = reg_preferred_class (regno);
  qty[qtyno].alternate_class = reg_alternate_class (regno);
  qty[qtyno].n_refs = REG_N_REFS (regno);
  qty[qtyno].freq = REG_FREQ (regno);
}
