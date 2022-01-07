
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {char* filename; int f; } ;
typedef int bfd_boolean ;


 int TRUE ;
 int fprintf (int ,char*,char const*,char*,double) ;
 int indent (struct pr_handle*) ;

__attribute__((used)) static bfd_boolean
tg_float_constant (void *p, const char *name, double val)
{
  struct pr_handle *info = (struct pr_handle *) p;

  indent (info);
  fprintf (info->f, "%s\t%s\t0;\"\tkind:v\ttype:const double\tvalue:%g\n",
    name, info->filename, val);
  return TRUE;
}
