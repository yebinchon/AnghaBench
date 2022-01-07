
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int indent; int f; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int TRUE ;
 int fprintf (int ,char*,char*) ;
 int indent (struct pr_handle*) ;
 int print_vma (int ,char*,int ,int ) ;

__attribute__((used)) static bfd_boolean
pr_end_block (void *p, bfd_vma addr)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char ab[20];

  info->indent -= 2;

  indent (info);
  print_vma (addr, ab, TRUE, TRUE);
  fprintf (info->f, "} /* %s */\n", ab);

  return TRUE;
}
