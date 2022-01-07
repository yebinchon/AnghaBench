
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frch_obstack; } ;


 int frag_alloc_check (int *) ;
 int frag_new (int ) ;
 int frag_now ;
 int frag_wane (int ) ;
 TYPE_1__* frchain_now ;
 int obstack_1grow (int *,int) ;
 int obstack_room (int *) ;

void
frag_append_1_char (int datum)
{
  frag_alloc_check (&frchain_now->frch_obstack);
  if (obstack_room (&frchain_now->frch_obstack) <= 1)
    {
      frag_wane (frag_now);
      frag_new (0);
    }
  obstack_1grow (&frchain_now->frch_obstack, datum);
}
