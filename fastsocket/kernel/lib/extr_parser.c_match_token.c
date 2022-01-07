
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct match_token {int token; int pattern; } ;
typedef struct match_token* match_table_t ;


 int match_one (char*,int ,int *) ;

int match_token(char *s, const match_table_t table, substring_t args[])
{
 const struct match_token *p;

 for (p = table; !match_one(s, p->pattern, args) ; p++)
  ;

 return p->token;
}
