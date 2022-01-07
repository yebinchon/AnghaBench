
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct captured_main_args {int use_windows; } ;


 int RETURN_MASK_ALL ;
 int captured_main ;
 int catch_errors (int ,struct captured_main_args*,char*,int ) ;
 int use_windows ;

int
gdb_main (struct captured_main_args *args)
{
  use_windows = args->use_windows;
  catch_errors (captured_main, args, "", RETURN_MASK_ALL);


  return 1;
}
