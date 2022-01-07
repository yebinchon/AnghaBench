
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;






 int snprintf (char*,int,char*,int) ;
 int strcmp (char*,char*) ;
 int strlcat (char*,char*,size_t) ;

__attribute__((used)) static const char *
fmtmask(char *b, size_t l, int fam, int mask)
{
 char buf[128];

 switch (mask) {
 case 128:
  return "";
 case 129:
  if (strcmp(b, "=") == 0)
   return "";
  else {
   strlcat(b, "/=", l);
   return b;
  }
 default:
  break;
 }

 switch (fam) {
 case 131:
  if (mask == 32)
   return "";
  break;
 case 130:
  if (mask == 128)
   return "";
  break;
 default:
  break;
 }

 snprintf(buf, sizeof(buf), "/%d", mask);
 strlcat(b, buf, l);
 return b;
}
