
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; int str; } ;
struct parse_events__term {TYPE_1__ val; int config; int type_term; int type_val; } ;


 int new_term (struct parse_events__term**,int ,int ,int ,int ,int ) ;

int parse_events__term_clone(struct parse_events__term **new,
        struct parse_events__term *term)
{
 return new_term(new, term->type_val, term->type_term, term->config,
   term->val.str, term->val.num);
}
