
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int columns ;
 int fputs (char const*,int ) ;
 int putchar (char) ;
 int stdout ;
 int strlen (char const*) ;

__attribute__((used)) static unsigned int
print_switch (const char *text, unsigned int indent)
{
  unsigned int len = strlen (text) + 1;

  if (indent)
    {
      putchar (',');
      if (indent + len > columns)
 {
   putchar ('\n');
   putchar (' ');
   indent = 1;
 }
    }
  else
    putchar (' ');

  putchar (' ');
  fputs (text, stdout);

  return indent + len + 1;
}
