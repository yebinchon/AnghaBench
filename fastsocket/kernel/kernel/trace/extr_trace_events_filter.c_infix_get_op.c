
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct filter_parse_state {TYPE_1__* ops; } ;
struct TYPE_2__ {char* string; int id; } ;


 int OP_NONE ;
 int infix_advance (struct filter_parse_state*) ;
 char infix_peek (struct filter_parse_state*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int infix_get_op(struct filter_parse_state *ps, char firstc)
{
 char nextc = infix_peek(ps);
 char opstr[3];
 int i;

 opstr[0] = firstc;
 opstr[1] = nextc;
 opstr[2] = '\0';

 for (i = 0; strcmp(ps->ops[i].string, "OP_NONE"); i++) {
  if (!strcmp(opstr, ps->ops[i].string)) {
   infix_advance(ps);
   return ps->ops[i].id;
  }
 }

 opstr[1] = '\0';

 for (i = 0; strcmp(ps->ops[i].string, "OP_NONE"); i++) {
  if (!strcmp(opstr, ps->ops[i].string))
   return ps->ops[i].id;
 }

 return OP_NONE;
}
