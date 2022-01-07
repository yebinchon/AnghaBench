
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int parameter; int f; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int fprintf (int ,char*,...) ;
 int indent (struct pr_handle*) ;
 char* pop_type (struct pr_handle*) ;
 int substitute_type (struct pr_handle*,char const*) ;

__attribute__((used)) static bfd_boolean
pr_start_function (void *p, const char *name, bfd_boolean global)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *t;

  if (! substitute_type (info, name))
    return FALSE;

  t = pop_type (info);
  if (t == ((void*)0))
    return FALSE;

  indent (info);
  if (! global)
    fprintf (info->f, "static ");
  fprintf (info->f, "%s (", t);

  info->parameter = 1;

  return TRUE;
}
