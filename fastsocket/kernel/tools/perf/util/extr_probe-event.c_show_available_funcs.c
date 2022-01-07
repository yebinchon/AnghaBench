
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strfilter {int dummy; } ;


 struct strfilter* available_func_filter ;
 int available_kernel_funcs (char const*) ;
 int available_user_funcs (char const*) ;
 int setup_pager () ;

int show_available_funcs(const char *target, struct strfilter *_filter,
     bool user)
{
 setup_pager();
 available_func_filter = _filter;

 if (!user)
  return available_kernel_funcs(target);

 return available_user_funcs(target);
}
