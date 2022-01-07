
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdebug_pending {char* s; struct mdebug_pending* next; } ;
struct TYPE_2__ {int * fdr; } ;
typedef int FDR ;


 TYPE_1__* debug_info ;
 struct mdebug_pending** pending_list ;

__attribute__((used)) static struct mdebug_pending *
is_pending_symbol (FDR *fh, char *sh)
{
  int f_idx = fh - debug_info->fdr;
  struct mdebug_pending *p;


  for (p = pending_list[f_idx]; p; p = p->next)
    if (p->s == sh)
      break;
  return p;
}
