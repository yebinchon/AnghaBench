
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct filter_parse_state {TYPE_1__* ops; } ;
struct TYPE_2__ {char* string; } ;


 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static inline int is_op_char(struct filter_parse_state *ps, char c)
{
 int i;

 for (i = 0; strcmp(ps->ops[i].string, "OP_NONE"); i++) {
  if (ps->ops[i].string[0] == c)
   return 1;
 }

 return 0;
}
