
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int parameter; int f; } ;
typedef enum debug_parm_kind { ____Placeholder_debug_parm_kind } debug_parm_kind ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int DEBUG_PARM_REFERENCE ;
 int DEBUG_PARM_REF_REG ;
 int DEBUG_PARM_REG ;
 int FALSE ;
 int TRUE ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 char* pop_type (struct pr_handle*) ;
 int pr_reference_type (void*) ;
 int print_vma (int ,char*,int ,int ) ;
 int substitute_type (struct pr_handle*,char const*) ;

__attribute__((used)) static bfd_boolean
pr_function_parameter (void *p, const char *name,
         enum debug_parm_kind kind, bfd_vma val)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *t;
  char ab[20];

  if (kind == DEBUG_PARM_REFERENCE
      || kind == DEBUG_PARM_REF_REG)
    {
      if (! pr_reference_type (p))
 return FALSE;
    }

  if (! substitute_type (info, name))
    return FALSE;

  t = pop_type (info);
  if (t == ((void*)0))
    return FALSE;

  if (info->parameter != 1)
    fprintf (info->f, ", ");

  if (kind == DEBUG_PARM_REG || kind == DEBUG_PARM_REF_REG)
    fprintf (info->f, "register ");

  print_vma (val, ab, TRUE, TRUE);
  fprintf (info->f, "%s /* %s */", t, ab);

  free (t);

  ++info->parameter;

  return TRUE;
}
