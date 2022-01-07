
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_data__terms {int * terms; } ;
struct list_head {int dummy; } ;


 int PE_START_TERMS ;
 int free (int *) ;
 int list_splice (int *,struct list_head*) ;
 int parse_events__free_terms (int *) ;
 int parse_events__scanner (char const*,struct parse_events_data__terms*,int ) ;

int parse_events_terms(struct list_head *terms, const char *str)
{
 struct parse_events_data__terms data = {
  .terms = ((void*)0),
 };
 int ret;

 ret = parse_events__scanner(str, &data, PE_START_TERMS);
 if (!ret) {
  list_splice(data.terms, terms);
  free(data.terms);
  return 0;
 }

 parse_events__free_terms(data.terms);
 return ret;
}
