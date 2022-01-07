
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_arg_info {int dummy; } ;


 struct c_arg_info* current_function_arg_info ;
 int store_parm_decls () ;

void
store_parm_decls_from (struct c_arg_info *arg_info)
{
  current_function_arg_info = arg_info;
  store_parm_decls ();
}
