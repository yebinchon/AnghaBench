
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFT ;


 int FMTCHECK_DOUBLE ;
 int FMTCHECK_INT ;
 int FMTCHECK_INTPOINTER ;
 int FMTCHECK_LONG ;
 int FMTCHECK_LONGDOUBLE ;
 int FMTCHECK_LONGPOINTER ;
 int FMTCHECK_QUAD ;
 int FMTCHECK_QUADPOINTER ;
 int FMTCHECK_SHORTPOINTER ;
 int FMTCHECK_STRING ;
 int FMTCHECK_UNKNOWN ;
 int RETURN (char const**,char const*,int ) ;
 scalar_t__ strchr (char*,char const) ;

__attribute__((used)) static EFT
get_next_format_from_precision(const char **pf)
{
 int sh, lg, quad, longdouble;
 const char *f;

 sh = lg = quad = longdouble = 0;

 f = *pf;
 switch (*f) {
 case 'h':
  f++;
  sh = 1;
  break;
 case 'l':
  f++;
  if (!*f) RETURN(pf,f,FMTCHECK_UNKNOWN);
  if (*f == 'l') {
   f++;
   quad = 1;
  } else {
   lg = 1;
  }
  break;
 case 'q':
  f++;
  quad = 1;
  break;
 case 'L':
  f++;
  longdouble = 1;
  break;
 default:
  break;
 }
 if (!*f) RETURN(pf,f,FMTCHECK_UNKNOWN);
 if (strchr("diouxX", *f)) {
  if (longdouble)
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  if (lg)
   RETURN(pf,f,FMTCHECK_LONG);
  if (quad)
   RETURN(pf,f,FMTCHECK_QUAD);
  RETURN(pf,f,FMTCHECK_INT);
 }
 if (*f == 'n') {
  if (longdouble)
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  if (sh)
   RETURN(pf,f,FMTCHECK_SHORTPOINTER);
  if (lg)
   RETURN(pf,f,FMTCHECK_LONGPOINTER);
  if (quad)
   RETURN(pf,f,FMTCHECK_QUADPOINTER);
  RETURN(pf,f,FMTCHECK_INTPOINTER);
 }
 if (strchr("DOU", *f)) {
  if (sh + lg + quad + longdouble)
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  RETURN(pf,f,FMTCHECK_LONG);
 }
 if (strchr("eEfg", *f)) {
  if (longdouble)
   RETURN(pf,f,FMTCHECK_LONGDOUBLE);
  if (sh + lg + quad)
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  RETURN(pf,f,FMTCHECK_DOUBLE);
 }
 if (*f == 'c') {
  if (sh + lg + quad + longdouble)
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  RETURN(pf,f,FMTCHECK_INT);
 }
 if (*f == 's') {
  if (sh + lg + quad + longdouble)
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  RETURN(pf,f,FMTCHECK_STRING);
 }
 if (*f == 'p') {
  if (sh + lg + quad + longdouble)
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  RETURN(pf,f,FMTCHECK_LONG);
 }
 RETURN(pf,f,FMTCHECK_UNKNOWN);

}
