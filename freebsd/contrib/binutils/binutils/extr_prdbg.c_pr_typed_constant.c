
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int f; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int fprintf (int ,char*,char*,char const*,char*) ;
 int free (char*) ;
 int indent (struct pr_handle*) ;
 char* pop_type (struct pr_handle*) ;
 int print_vma (int ,char*,int ,int ) ;

__attribute__((used)) static bfd_boolean
pr_typed_constant (void *p, const char *name, bfd_vma val)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *t;
  char ab[20];

  t = pop_type (info);
  if (t == ((void*)0))
    return FALSE;

  indent (info);
  print_vma (val, ab, FALSE, FALSE);
  fprintf (info->f, "const %s %s = %s;\n", t, name, ab);

  free (t);

  return TRUE;
}
