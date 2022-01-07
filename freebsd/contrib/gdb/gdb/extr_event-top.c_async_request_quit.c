
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_client_data ;


 int quit () ;
 int quit_flag ;

void
async_request_quit (gdb_client_data arg)
{
  quit_flag = 1;
  quit ();
}
