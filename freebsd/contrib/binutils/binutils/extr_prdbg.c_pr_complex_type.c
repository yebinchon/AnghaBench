
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int dummy; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int pr_float_type (void*,unsigned int) ;
 int prepend_type (struct pr_handle*,char*) ;

__attribute__((used)) static bfd_boolean
pr_complex_type (void *p, unsigned int size)
{
  struct pr_handle *info = (struct pr_handle *) p;

  if (! pr_float_type (p, size))
    return FALSE;

  return prepend_type (info, "complex ");
}
