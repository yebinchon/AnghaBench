
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int f; } ;
typedef enum debug_var_kind { ____Placeholder_debug_var_kind } debug_var_kind ;
typedef int bfd_vma ;
typedef int bfd_boolean ;





 int FALSE ;
 int TRUE ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int indent (struct pr_handle*) ;
 char* pop_type (struct pr_handle*) ;
 int print_vma (int ,char*,int ,int ) ;
 int substitute_type (struct pr_handle*,char const*) ;

__attribute__((used)) static bfd_boolean
pr_variable (void *p, const char *name, enum debug_var_kind kind,
      bfd_vma val)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *t;
  char ab[20];

  if (! substitute_type (info, name))
    return FALSE;

  t = pop_type (info);
  if (t == ((void*)0))
    return FALSE;

  indent (info);
  switch (kind)
    {
    case 128:
    case 130:
      fprintf (info->f, "static ");
      break;
    case 129:
      fprintf (info->f, "register ");
      break;
    default:
      break;
    }
  print_vma (val, ab, TRUE, TRUE);
  fprintf (info->f, "%s /* %s */;\n", t, ab);

  free (t);

  return TRUE;
}
