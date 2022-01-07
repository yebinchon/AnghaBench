
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* regexp_t ;
typedef int automaton_t ;
struct TYPE_13__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_12__ {TYPE_4__* alt_states; } ;
struct TYPE_11__ {struct TYPE_11__* next_alt_state; int state; } ;
struct TYPE_10__ {scalar_t__ mode; } ;


 TYPE_8__* REGEXP_ONEOF (TYPE_1__*) ;
 TYPE_4__* alt_state_being_formed ;
 TYPE_6__* curr_ainsn ;
 int finish_forming_alt_state (TYPE_4__*,int ) ;
 int gcc_assert (int) ;
 TYPE_4__* get_free_alt_state () ;
 int get_free_state (int,int ) ;
 int process_seq_for_forming_states (TYPE_1__*,int ,int ) ;
 scalar_t__ rm_oneof ;
 int state_being_formed ;

__attribute__((used)) static void
process_alts_for_forming_states (regexp_t regexp, automaton_t automaton,
     int inside_oneof_p)
{
  int i;

  if (regexp->mode != rm_oneof)
    {
      alt_state_being_formed = get_free_alt_state ();
      state_being_formed = get_free_state (1, automaton);
      alt_state_being_formed->state = state_being_formed;



      alt_state_being_formed->next_alt_state = curr_ainsn->alt_states;
      curr_ainsn->alt_states = alt_state_being_formed;
      (void) process_seq_for_forming_states (regexp, automaton, 0);
      finish_forming_alt_state (alt_state_being_formed, automaton);
    }
  else
    {
      gcc_assert (!inside_oneof_p);



      for (i = REGEXP_ONEOF (regexp)->regexps_num - 1; i >= 0; i--)
 process_alts_for_forming_states (REGEXP_ONEOF (regexp)->regexps [i],
      automaton, 1);
    }
}
