
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle_state {size_t insn_num; scalar_t__ cost; scalar_t__ accumulated_insns_num; scalar_t__ branch_deviation; struct bundle_state* next; } ;


 int FALSE ;
 int TRUE ;
 int bundle_state_table ;
 void** htab_find_slot (int ,struct bundle_state*,int) ;
 struct bundle_state** index_to_bundle_states ;

__attribute__((used)) static int
insert_bundle_state (struct bundle_state *bundle_state)
{
  void **entry_ptr;

  entry_ptr = htab_find_slot (bundle_state_table, bundle_state, 1);
  if (*entry_ptr == ((void*)0))
    {
      bundle_state->next = index_to_bundle_states [bundle_state->insn_num];
      index_to_bundle_states [bundle_state->insn_num] = bundle_state;
      *entry_ptr = (void *) bundle_state;
      return TRUE;
    }
  else if (bundle_state->cost < ((struct bundle_state *) *entry_ptr)->cost
    || (bundle_state->cost == ((struct bundle_state *) *entry_ptr)->cost
        && (((struct bundle_state *)*entry_ptr)->accumulated_insns_num
     > bundle_state->accumulated_insns_num
     || (((struct bundle_state *)
   *entry_ptr)->accumulated_insns_num
         == bundle_state->accumulated_insns_num
         && ((struct bundle_state *)
      *entry_ptr)->branch_deviation
         > bundle_state->branch_deviation))))

    {
      struct bundle_state temp;

      temp = *(struct bundle_state *) *entry_ptr;
      *(struct bundle_state *) *entry_ptr = *bundle_state;
      ((struct bundle_state *) *entry_ptr)->next = temp.next;
      *bundle_state = temp;
    }
  return FALSE;
}
