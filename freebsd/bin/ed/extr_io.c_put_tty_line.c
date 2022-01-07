
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR ;
 char* ESCAPES ;
 char* ESCCHARS ;
 int GLS ;
 int GNP ;
 int cols ;
 int fflush (int ) ;
 int fputs (char*,int ) ;
 scalar_t__ get_tty_line () ;
 int isglobal ;
 int printf (char*,long) ;
 int putchar (char const) ;
 int rows ;
 int scripted ;
 int stdout ;
 char* strchr (char*,char const) ;

int
put_tty_line(const char *s, int l, long n, int gflag)
{
 int col = 0;
 int lc = 0;
 char *cp;

 if (gflag & GNP) {
  printf("%ld\t", n);
  col = 8;
 }
 for (; l--; s++) {
  if ((gflag & GLS) && ++col > cols) {
   fputs("\\\n", stdout);
   col = 1;

   if (!scripted && !isglobal && ++lc > rows) {
    lc = 0;
    fputs("Press <RETURN> to continue... ", stdout);
    fflush(stdout);
    if (get_tty_line() < 0)
     return ERR;
   }

  }
  if (gflag & GLS) {
   if (31 < *s && *s < 127 && *s != '\\')
    putchar(*s);
   else {
    putchar('\\');
    col++;
    if (*s && (cp = strchr(ESCAPES, *s)) != ((void*)0))
     putchar(ESCCHARS[cp - ESCAPES]);
    else {
     putchar((((unsigned char) *s & 0300) >> 6) + '0');
     putchar((((unsigned char) *s & 070) >> 3) + '0');
     putchar(((unsigned char) *s & 07) + '0');
     col += 2;
    }
   }

  } else
   putchar(*s);
 }

 if (gflag & GLS)
  putchar('$');

 putchar('\n');
 return 0;
}
