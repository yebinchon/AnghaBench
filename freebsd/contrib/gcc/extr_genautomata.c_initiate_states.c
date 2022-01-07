
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int set_el_t ;
typedef int htab_del ;
typedef TYPE_1__* decl_t ;
struct TYPE_9__ {int units_num; int decls_num; int max_insn_reserv_cycles; TYPE_1__** decls; } ;
struct TYPE_8__ {size_t unit_num; } ;
struct TYPE_7__ {scalar_t__ mode; } ;


 int CHAR_BIT ;
 TYPE_2__* DECL_UNIT (TYPE_1__*) ;
 TYPE_2__** XNEWVEC (int ,int) ;
 int alloc_empty_reserv_sets () ;
 scalar_t__ curr_unique_state_num ;
 TYPE_3__* description ;
 scalar_t__ dm_unit ;
 int els_in_cycle_reserv ;
 int els_in_reservs ;
 int htab_create (int,int ,int ,int ) ;
 int initiate_alt_states () ;
 int max_cycles_num ;
 int state_eq_p ;
 int state_hash ;
 int state_table ;
 int temp_reserv ;
 int unit_decl_t ;
 TYPE_2__** units_array ;

__attribute__((used)) static void
initiate_states (void)
{
  decl_t decl;
  int i;

  if (description->units_num)
    units_array = XNEWVEC (unit_decl_t, description->units_num);
  else
    units_array = 0;

  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_unit)
 units_array [DECL_UNIT (decl)->unit_num] = DECL_UNIT (decl);
    }
  max_cycles_num = description->max_insn_reserv_cycles;
  els_in_cycle_reserv
    = ((description->units_num + sizeof (set_el_t) * CHAR_BIT - 1)
       / (sizeof (set_el_t) * CHAR_BIT));
  els_in_reservs = els_in_cycle_reserv * max_cycles_num;
  curr_unique_state_num = 0;
  initiate_alt_states ();
  state_table = htab_create (1500, state_hash, state_eq_p, (htab_del) 0);
  temp_reserv = alloc_empty_reserv_sets ();
}
