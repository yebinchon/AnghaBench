
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * targ; int * log; int * err; int * out; } ;


 int * gdb_stderr ;
 int * gdb_stdlog ;
 int * gdb_stdout ;
 int * gdb_stdtarg ;
 TYPE_1__ saved_output ;
 int ui_file_delete (int *) ;
 int ui_out_redirect (int ,int *) ;
 int uiout ;

__attribute__((used)) static void
pop_output_files (void)
{


  ui_file_delete (gdb_stdout);
  gdb_stdout = saved_output.out;
  gdb_stderr = saved_output.err;
  gdb_stdlog = saved_output.log;
  gdb_stdtarg = saved_output.targ;
  saved_output.out = ((void*)0);
  saved_output.err = ((void*)0);
  saved_output.log = ((void*)0);
  saved_output.targ = ((void*)0);

  ui_out_redirect (uiout, ((void*)0));
}
