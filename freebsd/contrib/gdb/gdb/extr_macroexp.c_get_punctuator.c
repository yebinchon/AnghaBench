
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {int dummy; } ;


 int memcmp (char*,char const*,int) ;
 int set_token (struct macro_buffer*,char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
get_punctuator (struct macro_buffer *tok, char *p, char *end)
{



  static const char * const punctuators[] = {
    "[", "]", "(", ")", "{", "}", ".", "->",
    "++", "--", "&", "*", "+", "-", "~", "!",
    "/", "%", "<<", ">>", "<", ">", "<=", ">=", "==", "!=",
    "^", "|", "&&", "||",
    "?", ":", ";", "...",
    "=", "*=", "/=", "%=", "+=", "-=", "<<=", ">>=", "&=", "^=", "|=",
    ",", "#", "##",
    "<:", ":>", "<%", "%>", "%:", "%:%:",
    0
  };

  int i;

  if (p + 1 <= end)
    {
      for (i = 0; punctuators[i]; i++)
        {
          const char *punctuator = punctuators[i];

          if (p[0] == punctuator[0])
            {
              int len = strlen (punctuator);

              if (p + len <= end
                  && ! memcmp (p, punctuator, len))
                {
                  set_token (tok, p, p + len);
                  return 1;
                }
            }
        }
    }

  return 0;
}
