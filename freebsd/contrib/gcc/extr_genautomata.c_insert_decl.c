
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ decl_t ;


 int decl_table ;
 void** htab_find_slot (int ,scalar_t__,int) ;

__attribute__((used)) static decl_t
insert_decl (decl_t decl)
{
  void **entry_ptr;

  entry_ptr = htab_find_slot (decl_table, decl, 1);
  if (*entry_ptr == ((void*)0))
    *entry_ptr = (void *) decl;
  return (decl_t) *entry_ptr;
}
