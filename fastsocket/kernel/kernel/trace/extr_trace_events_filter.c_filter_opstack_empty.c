
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_parse_state {int opstack; } ;


 int list_empty (int *) ;

__attribute__((used)) static int filter_opstack_empty(struct filter_parse_state *ps)
{
 return list_empty(&ps->opstack);
}
