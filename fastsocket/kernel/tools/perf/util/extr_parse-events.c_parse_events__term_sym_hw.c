
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events__term {int dummy; } ;
struct event_symbol {scalar_t__ symbol; } ;


 int BUG_ON (int) ;
 int PARSE_EVENTS__TERM_TYPE_STR ;
 int PARSE_EVENTS__TERM_TYPE_USER ;
 unsigned int PERF_COUNT_HW_MAX ;
 struct event_symbol* event_symbols_hw ;
 int new_term (struct parse_events__term**,int ,int ,char*,char*,int ) ;

int parse_events__term_sym_hw(struct parse_events__term **term,
         char *config, unsigned idx)
{
 struct event_symbol *sym;

 BUG_ON(idx >= PERF_COUNT_HW_MAX);
 sym = &event_symbols_hw[idx];

 if (config)
  return new_term(term, PARSE_EVENTS__TERM_TYPE_STR,
    PARSE_EVENTS__TERM_TYPE_USER, config,
    (char *) sym->symbol, 0);
 else
  return new_term(term, PARSE_EVENTS__TERM_TYPE_STR,
    PARSE_EVENTS__TERM_TYPE_USER,
    (char *) "event", (char *) sym->symbol, 0);
}
