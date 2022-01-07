
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REALLOC (char*,int,int,int *) ;
 char* errmsg ;
 int get_tty_line () ;
 int has_trailing_escape (char*,char*) ;
 char* ibuf ;
 char* ibufp ;
 int memcpy (char*,char*,int) ;

char *
get_extended_line(int *sizep, int nonl)
{
 static char *cvbuf = ((void*)0);
 static int cvbufsz = 0;

 int l, n;
 char *t = ibufp;

 while (*t++ != '\n')
  ;
 if ((l = t - ibufp) < 2 || !has_trailing_escape(ibufp, ibufp + l - 1)) {
  *sizep = l;
  return ibufp;
 }
 *sizep = -1;
 REALLOC(cvbuf, cvbufsz, l, ((void*)0));
 memcpy(cvbuf, ibufp, l);
 *(cvbuf + --l - 1) = '\n';
 if (nonl) l--;
 for (;;) {
  if ((n = get_tty_line()) < 0)
   return ((void*)0);
  else if (n == 0 || ibuf[n - 1] != '\n') {
   errmsg = "unexpected end-of-file";
   return ((void*)0);
  }
  REALLOC(cvbuf, cvbufsz, l + n, ((void*)0));
  memcpy(cvbuf + l, ibuf, n);
  l += n;
  if (n < 2 || !has_trailing_escape(cvbuf, cvbuf + l - 1))
   break;
  *(cvbuf + --l - 1) = '\n';
  if (nonl) l--;
 }
 REALLOC(cvbuf, cvbufsz, l + 1, ((void*)0));
 cvbuf[l] = '\0';
 *sizep = l;
 return cvbuf;
}
