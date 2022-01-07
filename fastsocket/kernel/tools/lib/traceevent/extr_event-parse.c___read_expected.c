
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum event_type { ____Placeholder_event_type } event_type ;


 int free_token (char*) ;
 int read_token (char**) ;
 int read_token_item (char**) ;
 int test_type_token (int,char*,int,char const*) ;

__attribute__((used)) static int __read_expected(enum event_type expect, const char *str,
      int newline_ok)
{
 enum event_type type;
 char *token;
 int ret;

 if (newline_ok)
  type = read_token(&token);
 else
  type = read_token_item(&token);

 ret = test_type_token(type, token, expect, str);

 free_token(token);

 return ret;
}
