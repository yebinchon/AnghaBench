
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct type {int dummy; } ;
struct mdebug_pending {char* s; struct mdebug_pending* next; struct type* t; } ;
struct TYPE_4__ {int objfile_obstack; } ;
struct TYPE_3__ {int * fdr; } ;
typedef int FDR ;


 TYPE_2__* current_objfile ;
 TYPE_1__* debug_info ;
 struct mdebug_pending* is_pending_symbol (int *,char*) ;
 scalar_t__ obstack_alloc (int *,int) ;
 struct mdebug_pending** pending_list ;

__attribute__((used)) static void
add_pending (FDR *fh, char *sh, struct type *t)
{
  int f_idx = fh - debug_info->fdr;
  struct mdebug_pending *p = is_pending_symbol (fh, sh);


  if (!p)
    {
      p = ((struct mdebug_pending *)
    obstack_alloc (&current_objfile->objfile_obstack,
     sizeof (struct mdebug_pending)));
      p->s = sh;
      p->t = t;
      p->next = pending_list[f_idx];
      pending_list[f_idx] = p;
    }
}
