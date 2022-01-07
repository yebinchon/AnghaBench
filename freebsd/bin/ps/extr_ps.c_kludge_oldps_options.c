
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigitch (char const) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 int xo_errx (int,char*) ;

__attribute__((used)) static char *
kludge_oldps_options(const char *optlist, char *origval, const char *nextarg)
{
 size_t len;
 char *argp, *cp, *newopts, *ns, *optp, *pidp;





 argp = ((void*)0);
 if (optlist != ((void*)0)) {
  for (cp = origval; *cp != '\0'; cp++) {
   optp = strchr(optlist, *cp);
   if ((optp != ((void*)0)) && *(optp + 1) == ':') {
    argp = cp;
    break;
   }
  }
 }
 if (argp != ((void*)0) && *origval == '-')
  return (origval);
 len = strlen(origval);
 cp = origval + len - 1;
 pidp = ((void*)0);
 if (*cp == 't' && *origval != '-' && cp == argp) {
  if (nextarg == ((void*)0) || *nextarg == '-' || isdigitch(*nextarg))
   *cp = 'T';
 } else if (argp == ((void*)0)) {






  if (isdigitch(*cp)) {
   while (cp >= origval && (*cp == ',' || isdigitch(*cp)))
    --cp;
   pidp = cp + 1;
  }
 }





 if (*origval == '-' && pidp == ((void*)0))
  return (origval);





 if ((newopts = ns = malloc(len + 3)) == ((void*)0))
  xo_errx(1, "malloc failed");

 if (*origval != '-')
  *ns++ = '-';

 if (pidp == ((void*)0))
  strcpy(ns, origval);
 else {




  len = pidp - origval;
  memcpy(ns, origval, len);
  ns += len;
  *ns++ = 'p';
  strcpy(ns, pidp);
 }

 return (newopts);
}
