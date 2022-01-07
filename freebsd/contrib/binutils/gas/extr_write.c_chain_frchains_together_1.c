
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct frchain {TYPE_2__* fix_tail; TYPE_2__* fix_root; TYPE_1__* frch_last; scalar_t__ frch_root; struct frchain* frch_next; } ;
typedef int segT ;
struct TYPE_5__ {scalar_t__ fr_type; scalar_t__ fr_next; } ;
typedef TYPE_1__ fragS ;
struct TYPE_6__ {struct TYPE_6__* fx_next; } ;
typedef TYPE_2__ fixS ;
struct TYPE_7__ {TYPE_2__* fix_tail; TYPE_2__* fix_root; } ;


 int assert (int) ;
 TYPE_3__* seg_info (int ) ;

__attribute__((used)) static fragS *
chain_frchains_together_1 (segT section, struct frchain *frchp)
{
  fragS dummy, *prev_frag = &dummy;
  fixS fix_dummy, *prev_fix = &fix_dummy;

  for (; frchp; frchp = frchp->frch_next)
    {
      prev_frag->fr_next = frchp->frch_root;
      prev_frag = frchp->frch_last;
      assert (prev_frag->fr_type != 0);
      if (frchp->fix_root != (fixS *) ((void*)0))
 {
   if (seg_info (section)->fix_root == (fixS *) ((void*)0))
     seg_info (section)->fix_root = frchp->fix_root;
   prev_fix->fx_next = frchp->fix_root;
   seg_info (section)->fix_tail = frchp->fix_tail;
   prev_fix = frchp->fix_tail;
 }
    }
  assert (prev_frag->fr_type != 0);
  assert (prev_frag != &dummy);
  prev_frag->fr_next = 0;
  return prev_frag;
}
