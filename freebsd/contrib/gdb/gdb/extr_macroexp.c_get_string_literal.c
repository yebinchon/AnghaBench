
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {int dummy; } ;


 int error (char*) ;
 int gdb_assert (int ) ;
 int parse_escape (char**) ;
 int set_token (struct macro_buffer*,char*,char*) ;

__attribute__((used)) static int
get_string_literal (struct macro_buffer *tok, char *p, char *end)
{
  if ((p + 1 <= end
       && *p == '\"')
      || (p + 2 <= end
          && p[0] == 'L'
          && p[1] == '\"'))
    {
      char *tok_start = p;

      if (*p == '\"')
        p++;
      else if (*p == 'L')
        p += 2;
      else
        gdb_assert (0);

      for (;;)
        {
          if (p >= end)
            error ("Unterminated string in expression.");
          else if (*p == '\"')
            {
              p++;
              break;
            }
          else if (*p == '\n')
            error ("Newline characters may not appear in string "
                   "constants.");
          else if (*p == '\\')
            {
              p++;
              parse_escape (&p);
            }
          else
            p++;
        }

      set_token (tok, tok_start, p);
      return 1;
    }
  else
    return 0;
}
