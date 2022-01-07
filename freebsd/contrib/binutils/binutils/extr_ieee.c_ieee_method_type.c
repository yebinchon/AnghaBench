
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {int dummy; } ;
typedef scalar_t__ bfd_boolean ;


 scalar_t__ ieee_function_type (void*,int,scalar_t__) ;
 int ieee_pop_unused_type (struct ieee_handle*) ;

__attribute__((used)) static bfd_boolean
ieee_method_type (void *p, bfd_boolean domain, int argcount,
    bfd_boolean varargs)
{
  struct ieee_handle *info = (struct ieee_handle *) p;





  if (domain)
    ieee_pop_unused_type (info);

  return ieee_function_type (p, argcount, varargs);
}
