
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_entry_number (int ) ;
 int get_self_id () ;

int
get_current_task (void)
{
  int result;




  result = get_entry_number (get_self_id ());


  return result == 0 ? -1 : result;
}
