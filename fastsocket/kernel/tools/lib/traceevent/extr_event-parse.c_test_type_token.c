
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum event_type { ____Placeholder_event_type } event_type ;


 int do_warning (char*,...) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int test_type_token(enum event_type type, const char *token,
      enum event_type expect, const char *expect_tok)
{
 if (type != expect) {
  do_warning("Error: expected type %d but read %d",
      expect, type);
  return -1;
 }

 if (strcmp(token, expect_tok) != 0) {
  do_warning("Error: expected '%s' but read '%s'",
      expect_tok, token);
  return -1;
 }
 return 0;
}
