
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int f; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int TRUE ;
 int fprintf (int ,char*,char const*,unsigned long,char*) ;
 int indent (struct pr_handle*) ;
 int print_vma (int ,char*,int ,int ) ;

__attribute__((used)) static bfd_boolean
pr_lineno (void *p, const char *filename, unsigned long lineno, bfd_vma addr)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char ab[20];

  indent (info);
  print_vma (addr, ab, TRUE, TRUE);
  fprintf (info->f, "/* file %s line %lu addr %s */\n", filename, lineno, ab);

  return TRUE;
}
