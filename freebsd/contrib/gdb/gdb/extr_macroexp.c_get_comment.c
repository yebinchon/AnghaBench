
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {int dummy; } ;


 int error (char*) ;
 int set_token (struct macro_buffer*,char*,char*) ;

__attribute__((used)) static int
get_comment (struct macro_buffer *tok, char *p, char *end)
{
  if (p + 2 > end)
    return 0;
  else if (p[0] == '/'
           && p[1] == '*')
    {
      char *tok_start = p;

      p += 2;

      for (; p < end; p++)
        if (p + 2 <= end
            && p[0] == '*'
            && p[1] == '/')
          {
            p += 2;
            set_token (tok, tok_start, p);
            return 1;
          }

      error ("Unterminated comment in macro expansion.");
    }
  else if (p[0] == '/'
           && p[1] == '/')
    {
      char *tok_start = p;

      p += 2;
      for (; p < end; p++)
        if (*p == '\n')
          break;

      set_token (tok, tok_start, p);
      return 1;
    }
  else
    return 0;
}
