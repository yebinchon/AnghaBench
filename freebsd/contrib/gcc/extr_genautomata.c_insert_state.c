
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ state_t ;


 void** htab_find_slot (int ,void*,int) ;
 int state_table ;

__attribute__((used)) static state_t
insert_state (state_t state)
{
  void **entry_ptr;

  entry_ptr = htab_find_slot (state_table, (void *) state, 1);
  if (*entry_ptr == ((void*)0))
    *entry_ptr = (void *) state;
  return (state_t) *entry_ptr;
}
