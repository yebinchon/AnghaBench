
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int on_exit_func_t ;


 size_t ATEXIT_MAX ;
 int ENOMEM ;
 int __handle_on_exit_funcs ;
 void** __on_exit_args ;
 size_t __on_exit_count ;
 int * __on_exit_funcs ;
 int atexit (int ) ;

__attribute__((used)) static int on_exit(on_exit_func_t function, void *arg)
{
 if (__on_exit_count == ATEXIT_MAX)
  return -ENOMEM;
 else if (__on_exit_count == 0)
  atexit(__handle_on_exit_funcs);
 __on_exit_funcs[__on_exit_count] = function;
 __on_exit_args[__on_exit_count++] = arg;
 return 0;
}
