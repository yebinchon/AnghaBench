
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events__term {int dummy; } ;


 int PARSE_EVENTS__TERM_TYPE_STR ;
 int new_term (struct parse_events__term**,int ,int,char*,char*,int ) ;

int parse_events__term_str(struct parse_events__term **term,
      int type_term, char *config, char *str)
{
 return new_term(term, PARSE_EVENTS__TERM_TYPE_STR, type_term,
   config, str, 0);
}
