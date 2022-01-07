
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int f; } ;
typedef int bfd_boolean ;


 int TRUE ;
 int fprintf (int ,char*,char const*,double) ;
 int indent (struct pr_handle*) ;

__attribute__((used)) static bfd_boolean
pr_float_constant (void *p, const char *name, double val)
{
  struct pr_handle *info = (struct pr_handle *) p;

  indent (info);
  fprintf (info->f, "const double %s = %g;\n", name, val);
  return TRUE;
}
