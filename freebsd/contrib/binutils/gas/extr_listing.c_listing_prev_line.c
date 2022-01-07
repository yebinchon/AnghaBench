
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int frag; struct TYPE_6__* next; } ;
typedef TYPE_1__ list_info_type ;
struct TYPE_7__ {TYPE_1__* line; struct TYPE_7__* fr_next; } ;
typedef TYPE_2__ fragS ;
struct TYPE_8__ {TYPE_2__* frch_root; } ;


 int frag_now ;
 TYPE_5__* frchain_now ;
 TYPE_1__* head ;
 TYPE_1__* listing_tail ;
 int new_frag () ;

void
listing_prev_line (void)
{
  list_info_type *l;
  fragS *f;

  if (head == (list_info_type *) ((void*)0)
      || head == listing_tail)
    return;

  new_frag ();

  for (l = head; l->next != listing_tail; l = l->next)
    ;

  for (f = frchain_now->frch_root; f != (fragS *) ((void*)0); f = f->fr_next)
    if (f->line == listing_tail)
      f->line = l;

  listing_tail->frag = frag_now;
  new_frag ();
}
