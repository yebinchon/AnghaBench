
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clean_read_ptr ;
 int repl_write_ptr ;
 int saved_clean_read_ptr ;
 int saved_repl_write_ptr ;

__attribute__((used)) static void
restore_pointers (void)
{
  clean_read_ptr = saved_clean_read_ptr;
  repl_write_ptr = saved_repl_write_ptr;
}
