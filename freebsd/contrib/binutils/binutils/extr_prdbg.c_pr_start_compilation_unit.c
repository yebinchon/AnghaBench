
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {scalar_t__ indent; int f; } ;
typedef int bfd_boolean ;


 int TRUE ;
 int assert (int) ;
 int fprintf (int ,char*,char const*) ;

__attribute__((used)) static bfd_boolean
pr_start_compilation_unit (void *p, const char *filename)
{
  struct pr_handle *info = (struct pr_handle *) p;

  assert (info->indent == 0);

  fprintf (info->f, "%s:\n", filename);

  return TRUE;
}
