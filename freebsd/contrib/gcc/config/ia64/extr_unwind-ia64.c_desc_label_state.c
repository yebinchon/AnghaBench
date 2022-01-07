
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int unw_word ;
struct TYPE_4__ {int next; } ;
struct unw_state_record {struct unw_labeled_state* labeled_states; TYPE_2__ curr; } ;
struct TYPE_3__ {int next; } ;
struct unw_labeled_state {struct unw_labeled_state* next; TYPE_1__ saved_state; int label; } ;


 struct unw_labeled_state* alloc_label_state () ;
 int dup_state_stack (int ) ;
 int memcpy (TYPE_1__*,TYPE_2__*,int) ;

__attribute__((used)) static inline void
desc_label_state (unw_word label, struct unw_state_record *sr)
{
  struct unw_labeled_state *ls = alloc_label_state ();

  ls->label = label;
  memcpy (&ls->saved_state, &sr->curr, sizeof (ls->saved_state));
  ls->saved_state.next = dup_state_stack (sr->curr.next);


  ls->next = sr->labeled_states;
  sr->labeled_states = ls;
}
