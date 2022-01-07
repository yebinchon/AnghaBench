
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* NUL_TO_NEWLINE (char*,int) ;
 int REALLOC (char*,int,int,int *) ;
 char* errmsg ;
 char* ibufp ;
 scalar_t__ isbinary ;
 int memcpy (char*,char*,int) ;
 char* parse_char_class (char*) ;

char *
extract_pattern(int delimiter)
{
 static char *lhbuf = ((void*)0);
 static int lhbufsz = 0;

 char *nd;
 int len;

 for (nd = ibufp; *nd != delimiter && *nd != '\n'; nd++)
  switch (*nd) {
  default:
   break;
  case '[':
   if ((nd = parse_char_class(nd + 1)) == ((void*)0)) {
    errmsg = "unbalanced brackets ([])";
    return ((void*)0);
   }
   break;
  case '\\':
   if (*++nd == '\n') {
    errmsg = "trailing backslash (\\)";
    return ((void*)0);
   }
   break;
  }
 len = nd - ibufp;
 REALLOC(lhbuf, lhbufsz, len + 1, ((void*)0));
 memcpy(lhbuf, ibufp, len);
 lhbuf[len] = '\0';
 ibufp = nd;
 return (isbinary) ? NUL_TO_NEWLINE(lhbuf, len) : lhbuf;
}
