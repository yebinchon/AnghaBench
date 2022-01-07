
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int dummy; } ;
typedef int bfd_boolean ;


 int push_type (struct pr_handle*,char*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static bfd_boolean
pr_float_type (void *p, unsigned int size)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char ab[10];

  if (size == 4)
    return push_type (info, "float");
  else if (size == 8)
    return push_type (info, "double");

  sprintf (ab, "float%d", size * 8);
  return push_type (info, ab);
}
