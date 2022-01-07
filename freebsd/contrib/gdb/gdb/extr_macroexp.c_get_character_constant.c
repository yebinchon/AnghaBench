
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
get_character_constant (struct macro_buffer *tok, char *p, char *end)
{




  if ((p + 1 <= end && *p == '\'')
      || (p + 2 <= end && p[0] == 'L' && p[1] == '\''))
    {
      char *tok_start = p;
      char *body_start;

      if (*p == '\'')
        p++;
      else if (*p == 'L')
        p += 2;
      else
        gdb_assert (0);

      body_start = p;
      for (;;)
        {
          if (p >= end)
            error ("Unmatched single quote.");
          else if (*p == '\'')
            {
              if (p == body_start)
                error ("A character constant must contain at least one "
                       "character.");
              p++;
              break;
            }
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
