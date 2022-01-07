
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ unw_word ;
struct TYPE_4__ {int next; } ;
struct unw_state_record {TYPE_1__ curr; struct unw_labeled_state* labeled_states; } ;
struct TYPE_5__ {int next; } ;
struct unw_labeled_state {scalar_t__ label; TYPE_2__ saved_state; struct unw_labeled_state* next; } ;


 int abort () ;
 int dup_state_stack (int ) ;
 int free_state_stack (TYPE_1__*) ;
 int memcpy (TYPE_1__*,TYPE_2__*,int) ;

__attribute__((used)) static inline void
desc_copy_state (unw_word label, struct unw_state_record *sr)
{
  struct unw_labeled_state *ls;

  for (ls = sr->labeled_states; ls; ls = ls->next)
    {
      if (ls->label == label)
        {
   free_state_stack (&sr->curr);
      memcpy (&sr->curr, &ls->saved_state, sizeof (sr->curr));
   sr->curr.next = dup_state_stack (ls->saved_state.next);
   return;
 }
    }
  abort ();
}
