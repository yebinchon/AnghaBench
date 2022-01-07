
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ decl_t ;


 int automaton_decl_table ;
 void** htab_find_slot (int ,scalar_t__,int) ;

__attribute__((used)) static decl_t
insert_automaton_decl (decl_t automaton_decl)
{
  void **entry_ptr;

  entry_ptr = htab_find_slot (automaton_decl_table, automaton_decl, 1);
  if (*entry_ptr == ((void*)0))
    *entry_ptr = (void *) automaton_decl;
  return (decl_t) *entry_ptr;
}
