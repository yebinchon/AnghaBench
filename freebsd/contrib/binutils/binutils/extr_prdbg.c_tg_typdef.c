
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {char* filename; int f; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int fprintf (int ,char*,char const*,char*,char*) ;
 int free (char*) ;
 char* pop_type (struct pr_handle*) ;

__attribute__((used)) static bfd_boolean
tg_typdef (void *p, const char *name)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *s;

  s = pop_type (info);
  if (s == ((void*)0))
    return FALSE;

  fprintf (info->f, "%s\t%s\t0;\"\tkind:t\ttype:%s\n", name,
    info->filename, s);

  free (s);

  return TRUE;
}
