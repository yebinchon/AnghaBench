
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr_handle {scalar_t__ parameter; char* filename; int f; TYPE_1__* stack; int syms; int abfd; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_2__ {char* parents; scalar_t__* method; int * flavor; } ;


 int FALSE ;
 int TRUE ;
 int append_type (struct pr_handle*,char*) ;
 int fprintf (int ,char*,...) ;
 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 char* pop_type (struct pr_handle*) ;
 int print_vma (int ,char*,int,int) ;
 int translate_addresses (int ,char*,int ,int ) ;

__attribute__((used)) static bfd_boolean
tg_start_block (void *p, bfd_vma addr)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char ab[20], kind, *partof;
  char *t;
  bfd_boolean local;

  if (info->parameter > 0)
    {
      info->parameter = 0;


      fprintf (info->f, "%s\t%s\t", info->stack->parents, info->filename);
      free (info->stack->parents);

      print_vma (addr, ab, TRUE, TRUE);
      translate_addresses (info->abfd, ab, info->f, info->syms);
      local = info->stack->flavor != ((void*)0);
      if (info->stack->method && *info->stack->method)
 {
   kind = 'm';
   partof = (char *) info->stack->method;
 }
      else
 {
   kind = 'f';
   partof = ((void*)0);
   if (! info->stack->method && ! append_type (info, ")"))
     return FALSE;
 }
      t = pop_type (info);
      if (t == ((void*)0))
 return FALSE;
      fprintf (info->f, ";\"\tkind:%c\ttype:%s", kind, t);
      if (local)
 fputs ("\tfile:", info->f);
      if (partof)
 {
   fprintf (info->f, "\tclass:%s", partof);
   free (partof);
 }
      fputc ('\n', info->f);
    }

  return TRUE;
}
