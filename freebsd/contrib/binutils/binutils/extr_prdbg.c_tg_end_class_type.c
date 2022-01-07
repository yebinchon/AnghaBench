
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr_handle {char* filename; int f; TYPE_1__* stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {char* type; char* flavor; char* parents; scalar_t__ num_parents; } ;


 int fprintf (int ,char*,char*,...) ;
 int fputc (char,int ) ;
 int free (char*) ;
 int tg_end_struct_type (void*) ;

__attribute__((used)) static bfd_boolean
tg_end_class_type (void *p)
{
  struct pr_handle *info = (struct pr_handle *) p;

  fprintf (info->f, "%s\t%s\t0;\"\tkind:c\ttype:%s", info->stack->type,
    info->filename, info->stack->flavor);
  if (info->stack->num_parents)
    {
      fprintf (info->f, "\tinherits:%s", info->stack->parents);
      free (info->stack->parents);
    }
  fputc ('\n', info->f);

  return tg_end_struct_type (p);
}
