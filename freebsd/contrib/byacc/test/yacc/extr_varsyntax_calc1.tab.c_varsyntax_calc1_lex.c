
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ival; int dval; } ;


 int BSZ ;
 int CONST ;
 int DREG ;
 int VREG ;
 int atof (char*) ;
 int getchar () ;
 scalar_t__ isdigit (int) ;
 scalar_t__ islower (int) ;
 scalar_t__ isupper (int) ;
 int printf (char*) ;
 int stdin ;
 int ungetc (int,int ) ;
 TYPE_1__ yylval ;

int
yylex(void)
{
    int c;

    while ((c = getchar()) == ' ')
    {
    }

    if (isupper(c))
    {
 yylval.ival = c - 'A';
 return (VREG);
    }
    if (islower(c))
    {
 yylval.ival = c - 'a';
 return (DREG);
    }

    if (isdigit(c) || c == '.')
    {

 char buf[BSZ + 1], *cp = buf;
 int dot = 0, expr = 0;

 for (; (cp - buf) < BSZ; ++cp, c = getchar())
 {

     *cp = (char) c;
     if (isdigit(c))
  continue;
     if (c == '.')
     {
  if (dot++ || expr)
      return ('.');
  continue;
     }

     if (c == 'e')
     {
  if (expr++)
      return ('e');
  continue;
     }


     break;
 }
 *cp = '\0';

 if ((cp - buf) >= BSZ)
     printf("constant  too  long:  truncated\n");
 else
     ungetc(c, stdin);
 yylval.dval = atof(buf);
 return (CONST);
    }
    return (c);
}
