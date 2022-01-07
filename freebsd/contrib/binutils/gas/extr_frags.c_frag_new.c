
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct list_info_struct {int dummy; } ;
struct TYPE_7__ {TYPE_2__* frch_last; int frch_obstack; } ;
typedef TYPE_1__ frchainS ;
struct TYPE_8__ {scalar_t__ fr_type; struct TYPE_8__* fr_next; struct list_info_struct* line; int fr_line; int fr_file; scalar_t__ fr_fix; } ;
typedef TYPE_2__ fragS ;


 int as_where (int *,int *) ;
 int assert (int) ;
 TYPE_2__* frag_alloc (int *) ;
 TYPE_2__* frag_now ;
 scalar_t__ frag_now_fix_octets () ;
 TYPE_1__* frchain_now ;
 int know (TYPE_1__*) ;
 int obstack_finish (int *) ;

void
frag_new (int old_frags_var_max_size

                                       )
{
  fragS *former_last_fragP;
  frchainS *frchP;

  assert (frchain_now->frch_last == frag_now);


  frag_now->fr_fix = frag_now_fix_octets () - old_frags_var_max_size;

  assert (frag_now->fr_type != 0);



  (void) obstack_finish (&frchain_now->frch_obstack);
  frchP = frchain_now;
  know (frchP);
  former_last_fragP = frchP->frch_last;
  assert (former_last_fragP != 0);
  assert (former_last_fragP == frag_now);
  frag_now = frag_alloc (&frchP->frch_obstack);

  as_where (&frag_now->fr_file, &frag_now->fr_line);





  former_last_fragP->fr_next = frag_now;
  frchP->frch_last = frag_now;


  {
    extern struct list_info_struct *listing_tail;
    frag_now->line = listing_tail;
  }


  assert (frchain_now->frch_last == frag_now);

  frag_now->fr_next = ((void*)0);
}
