
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ts_fsm_token {int type; size_t value; } ;


 int* token_lookup_tbl ;

__attribute__((used)) static inline int match_token(struct ts_fsm_token *t, u8 d)
{
 if (t->type)
  return (token_lookup_tbl[d] & t->type) != 0;
 else
  return t->value == d;
}
