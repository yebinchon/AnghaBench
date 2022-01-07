
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {char* str; int num; } ;
struct parse_events__term {int type_val; int type_term; char* config; TYPE_1__ val; int list; } ;


 int EINVAL ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;


 struct parse_events__term* zalloc (int) ;

__attribute__((used)) static int new_term(struct parse_events__term **_term, int type_val,
      int type_term, char *config,
      char *str, u64 num)
{
 struct parse_events__term *term;

 term = zalloc(sizeof(*term));
 if (!term)
  return -ENOMEM;

 INIT_LIST_HEAD(&term->list);
 term->type_val = type_val;
 term->type_term = type_term;
 term->config = config;

 switch (type_val) {
 case 129:
  term->val.num = num;
  break;
 case 128:
  term->val.str = str;
  break;
 default:
  return -EINVAL;
 }

 *_term = term;
 return 0;
}
