
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR ;
 int REALLOC (char*,int ,int,int) ;
 int clearerr (int ) ;
 char* errmsg ;
 int errno ;
 int ferror (int ) ;
 int fprintf (int ,char*,char*) ;
 int getchar () ;
 char* ibuf ;
 char* ibufp ;
 int ibufsz ;
 int isbinary ;
 int lineno ;
 int stderr ;
 int stdin ;
 char* strerror (int ) ;

int
get_tty_line(void)
{
 int oi = 0;
 int i = 0;
 int c;

 for (;;)
  switch (c = getchar()) {
  default:
   oi = 0;
   REALLOC(ibuf, ibufsz, i + 2, ERR);
   if (!(ibuf[i++] = c)) isbinary = 1;
   if (c != '\n')
    continue;
   lineno++;
   ibuf[i] = '\0';
   ibufp = ibuf;
   return i;
  case 128:
   if (ferror(stdin)) {
    fprintf(stderr, "stdin: %s\n", strerror(errno));
    errmsg = "cannot read stdin";
    clearerr(stdin);
    ibufp = ((void*)0);
    return ERR;
   } else {
    clearerr(stdin);
    if (i != oi) {
     oi = i;
     continue;
    } else if (i)
     ibuf[i] = '\0';
    ibufp = ibuf;
    return i;
   }
  }
}
