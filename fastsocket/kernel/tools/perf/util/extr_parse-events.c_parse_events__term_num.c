
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct parse_events__term {int dummy; } ;


 int PARSE_EVENTS__TERM_TYPE_NUM ;
 int new_term (struct parse_events__term**,int ,int,char*,int *,int ) ;

int parse_events__term_num(struct parse_events__term **term,
      int type_term, char *config, u64 num)
{
 return new_term(term, PARSE_EVENTS__TERM_TYPE_NUM, type_term,
   config, ((void*)0), num);
}
