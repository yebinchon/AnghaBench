
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENT_ITEM ;
 int EVENT_NEWLINE ;
 int EVENT_OP ;
 int atoi (char*) ;
 int free_token (char*) ;
 unsigned long long input_buf_ptr ;
 unsigned long long input_buf_siz ;
 scalar_t__ read_expect_type (int,char**) ;
 scalar_t__ read_expected (int,char const*) ;
 int read_token (char**) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static void parse_header_field(const char *field,
          int *offset, int *size, int mandatory)
{
 unsigned long long save_input_buf_ptr;
 unsigned long long save_input_buf_siz;
 char *token;
 int type;

 save_input_buf_ptr = input_buf_ptr;
 save_input_buf_siz = input_buf_siz;

 if (read_expected(EVENT_ITEM, "field") < 0)
  return;
 if (read_expected(EVENT_OP, ":") < 0)
  return;


 if (read_expect_type(EVENT_ITEM, &token) < 0)
  goto fail;
 free_token(token);




 if (mandatory) {
  if (read_expected(EVENT_ITEM, field) < 0)
   return;
 } else {
  if (read_expect_type(EVENT_ITEM, &token) < 0)
   goto fail;
  if (strcmp(token, field) != 0)
   goto discard;
  free_token(token);
 }

 if (read_expected(EVENT_OP, ";") < 0)
  return;
 if (read_expected(EVENT_ITEM, "offset") < 0)
  return;
 if (read_expected(EVENT_OP, ":") < 0)
  return;
 if (read_expect_type(EVENT_ITEM, &token) < 0)
  goto fail;
 *offset = atoi(token);
 free_token(token);
 if (read_expected(EVENT_OP, ";") < 0)
  return;
 if (read_expected(EVENT_ITEM, "size") < 0)
  return;
 if (read_expected(EVENT_OP, ":") < 0)
  return;
 if (read_expect_type(EVENT_ITEM, &token) < 0)
  goto fail;
 *size = atoi(token);
 free_token(token);
 if (read_expected(EVENT_OP, ";") < 0)
  return;
 type = read_token(&token);
 if (type != EVENT_NEWLINE) {

  if (type != EVENT_ITEM)
   goto fail;

  if (strcmp(token, "signed") != 0)
   goto fail;

  free_token(token);

  if (read_expected(EVENT_OP, ":") < 0)
   return;

  if (read_expect_type(EVENT_ITEM, &token))
   goto fail;

  free_token(token);
  if (read_expected(EVENT_OP, ";") < 0)
   return;

  if (read_expect_type(EVENT_NEWLINE, &token))
   goto fail;
 }
 fail:
 free_token(token);
 return;

 discard:
 input_buf_ptr = save_input_buf_ptr;
 input_buf_siz = save_input_buf_siz;
 *offset = 0;
 *size = 0;
 free_token(token);
}
