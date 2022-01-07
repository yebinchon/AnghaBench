
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_parse_state {int dummy; } ;


 int filter_opstack_empty (struct filter_parse_state*) ;
 int filter_opstack_pop (struct filter_parse_state*) ;

__attribute__((used)) static void filter_opstack_clear(struct filter_parse_state *ps)
{
 while (!filter_opstack_empty(ps))
  filter_opstack_pop(ps);
}
