
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_client_data ;


 int after_char_processing_hook () ;
 int rl_callback_read_char () ;
 int stub1 () ;

__attribute__((used)) static void
rl_callback_read_char_wrapper (gdb_client_data client_data)
{
  rl_callback_read_char ();
  if (after_char_processing_hook)
    (*after_char_processing_hook) ();
}
