
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {char* text; int len; int shared; } ;


 int gdb_assert (int ) ;
 scalar_t__ get_character_constant (struct macro_buffer*,char*,char*) ;
 scalar_t__ get_comment (struct macro_buffer*,char*,char*) ;
 scalar_t__ get_identifier (struct macro_buffer*,char*,char*) ;
 scalar_t__ get_pp_number (struct macro_buffer*,char*,char*) ;
 scalar_t__ get_punctuator (struct macro_buffer*,char*,char*) ;
 scalar_t__ get_string_literal (struct macro_buffer*,char*,char*) ;
 scalar_t__ is_whitespace (char) ;
 int set_token (struct macro_buffer*,char*,char*) ;

__attribute__((used)) static int
get_token (struct macro_buffer *tok,
           struct macro_buffer *src)
{
  char *p = src->text;
  char *end = p + src->len;

  gdb_assert (src->shared);
  while (p < end)
    if (is_whitespace (*p))
      p++;
    else if (get_comment (tok, p, end))
      p += tok->len;
    else if (get_pp_number (tok, p, end)
             || get_character_constant (tok, p, end)
             || get_string_literal (tok, p, end)
             || get_identifier (tok, p, end)
             || get_punctuator (tok, p, end))
      {

        int consumed = p - src->text + tok->len;
        src->text += consumed;
        src->len -= consumed;
        return 1;
      }
    else
      {


        int consumed;

        set_token (tok, p, p + 1);
        consumed = p - src->text + tok->len;
        src->text += consumed;
        src->len -= consumed;
        return 1;
      }

  return 0;
}
