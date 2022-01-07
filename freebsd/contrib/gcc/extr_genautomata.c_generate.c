
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ units_num; } ;


 scalar_t__ automata_num ;
 int automaton_generation_time ;
 int create_automata () ;
 int create_ticker () ;
 TYPE_1__* description ;
 int initiate_arcs () ;
 int initiate_automata_lists () ;
 int initiate_excl_sets () ;
 int initiate_pass_states () ;
 int initiate_presence_absence_pattern_sets () ;
 int initiate_states () ;
 scalar_t__ split_argument ;
 int ticker_off (int *) ;

__attribute__((used)) static void
generate (void)
{
  automata_num = split_argument;
  if (description->units_num < automata_num)
    automata_num = description->units_num;
  initiate_states ();
  initiate_arcs ();
  initiate_automata_lists ();
  initiate_pass_states ();
  initiate_excl_sets ();
  initiate_presence_absence_pattern_sets ();
  automaton_generation_time = create_ticker ();
  create_automata ();
  ticker_off (&automaton_generation_time);
}
