
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* string; int cnt; } ;
struct filter_parse_state {int postfix; int opstack; struct filter_op* ops; TYPE_1__ infix; } ;
struct filter_op {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct filter_parse_state*,char,int) ;
 int strlen (char*) ;

__attribute__((used)) static void parse_init(struct filter_parse_state *ps,
         struct filter_op *ops,
         char *infix_string)
{
 memset(ps, '\0', sizeof(*ps));

 ps->infix.string = infix_string;
 ps->infix.cnt = strlen(infix_string);
 ps->ops = ops;

 INIT_LIST_HEAD(&ps->opstack);
 INIT_LIST_HEAD(&ps->postfix);
}
