
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s ;


 int EXERROR ;
 int INTOFF ;
 int INTON ;
 int VNOFUNC ;
 int exraise (int ) ;
 int flushall () ;
 int fmtstr (char*,int,char*,int) ;
 int out2fmt_flush (char*,char) ;
 int setvarsafe (char*,char const*,int ) ;
 int unsetvar (char*) ;

__attribute__((used)) static int
getopts(char *optstr, char *optvar, char **optfirst, char ***optnext,
    char **optptr)
{
 char *p, *q;
 char c = '?';
 int done = 0;
 int ind = 0;
 int err = 0;
 char s[10];
 const char *newoptarg = ((void*)0);

 if ((p = *optptr) == ((void*)0) || *p == '\0') {

  if (*optnext == ((void*)0))
   return 1;
  p = **optnext;
  if (p == ((void*)0) || *p != '-' || *++p == '\0') {
atend:
   ind = *optnext - optfirst + 1;
   *optnext = ((void*)0);
   p = ((void*)0);
   done = 1;
   goto out;
  }
  (*optnext)++;
  if (p[0] == '-' && p[1] == '\0')
   goto atend;
 }

 c = *p++;
 for (q = optstr; *q != c; ) {
  if (*q == '\0') {
   if (optstr[0] == ':') {
    s[0] = c;
    s[1] = '\0';
    newoptarg = s;
   }
   else
    out2fmt_flush("Illegal option -%c\n", c);
   c = '?';
   goto out;
  }
  if (*++q == ':')
   q++;
 }

 if (*++q == ':') {
  if (*p == '\0' && (p = **optnext) == ((void*)0)) {
   if (optstr[0] == ':') {
    s[0] = c;
    s[1] = '\0';
    newoptarg = s;
    c = ':';
   }
   else {
    out2fmt_flush("No arg for -%c option\n", c);
    c = '?';
   }
   goto out;
  }

  if (p == **optnext)
   (*optnext)++;
  newoptarg = p;
  p = ((void*)0);
 }

out:
 if (*optnext != ((void*)0))
  ind = *optnext - optfirst + 1;
 *optptr = p;
 if (newoptarg != ((void*)0))
  err |= setvarsafe("OPTARG", newoptarg, 0);
 else {
  INTOFF;
  err |= unsetvar("OPTARG");
  INTON;
 }
 fmtstr(s, sizeof(s), "%d", ind);
 err |= setvarsafe("OPTIND", s, VNOFUNC);
 s[0] = c;
 s[1] = '\0';
 err |= setvarsafe(optvar, s, 0);
 if (err) {
  *optnext = ((void*)0);
  *optptr = ((void*)0);
  flushall();
  exraise(EXERROR);
 }
 return done;
}
