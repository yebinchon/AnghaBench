
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int finish_alt_states () ;
 int * first_free_state ;
 int free (scalar_t__) ;
 int htab_delete (int ) ;
 int state_table ;
 scalar_t__ units_array ;

__attribute__((used)) static void
finish_states (void)
{
  free (units_array);
  units_array = 0;
  htab_delete (state_table);
  first_free_state = ((void*)0);
  finish_alt_states ();
}
