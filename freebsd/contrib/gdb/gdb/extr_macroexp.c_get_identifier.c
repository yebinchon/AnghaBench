
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {int is_identifier; } ;


 scalar_t__ is_digit (char) ;
 scalar_t__ is_identifier_nondigit (char) ;
 int set_token (struct macro_buffer*,char*,char*) ;

__attribute__((used)) static int
get_identifier (struct macro_buffer *tok, char *p, char *end)
{
  if (p < end
      && is_identifier_nondigit (*p))
    {
      char *tok_start = p;

      while (p < end
             && (is_identifier_nondigit (*p)
                 || is_digit (*p)))
        p++;

      set_token (tok, tok_start, p);
      tok->is_identifier = 1;
      return 1;
    }
  else
    return 0;
}
