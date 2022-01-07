
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ decl_t ;


 void** htab_find_slot (int ,scalar_t__,int) ;
 int insn_decl_table ;

__attribute__((used)) static decl_t
insert_insn_decl (decl_t insn_decl)
{
  void **entry_ptr;

  entry_ptr = htab_find_slot (insn_decl_table, insn_decl, 1);
  if (*entry_ptr == ((void*)0))
    *entry_ptr = (void *) insn_decl;
  return (decl_t) *entry_ptr;
}
