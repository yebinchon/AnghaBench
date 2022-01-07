
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum event_type { ____Placeholder_event_type } event_type ;


 int read_token (char**) ;
 int read_token_item (char**) ;
 int test_type (int,int) ;

__attribute__((used)) static int __read_expect_type(enum event_type expect, char **tok, int newline_ok)
{
 enum event_type type;

 if (newline_ok)
  type = read_token(tok);
 else
  type = read_token_item(tok);
 return test_type(type, expect);
}
