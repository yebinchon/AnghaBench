
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int f; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int indent (struct pr_handle*) ;
 char* pop_type (struct pr_handle*) ;
 int substitute_type (struct pr_handle*,char const*) ;

__attribute__((used)) static bfd_boolean
pr_typdef (void *p, const char *name)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *s;

  if (! substitute_type (info, name))
    return FALSE;

  s = pop_type (info);
  if (s == ((void*)0))
    return FALSE;

  indent (info);
  fprintf (info->f, "typedef %s;\n", s);

  free (s);

  return TRUE;
}
