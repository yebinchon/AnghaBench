
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ canon_modify_mem_list ;
 int clear_modify_mem_tables () ;
 int free (scalar_t__) ;
 scalar_t__ modify_mem_list ;

__attribute__((used)) static void
free_modify_mem_tables (void)
{
  clear_modify_mem_tables ();
  free (modify_mem_list);
  free (canon_modify_mem_list);
  modify_mem_list = 0;
  canon_modify_mem_list = 0;
}
