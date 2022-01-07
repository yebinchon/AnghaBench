
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {char* filename; int f; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int fprintf (int ,char*,char const*,char*,char*) ;
 int indent (struct pr_handle*) ;
 int print_vma (int ,char*,int ,int ) ;

__attribute__((used)) static bfd_boolean
tg_int_constant (void *p, const char *name, bfd_vma val)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char ab[20];

  indent (info);
  print_vma (val, ab, FALSE, FALSE);
  fprintf (info->f, "%s\t%s\t0;\"\tkind:v\ttype:const int\tvalue:%s\n",
    name, info->filename, ab);
  return TRUE;
}
