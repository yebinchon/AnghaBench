
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ces_status_flags ;
typedef int buf ;


 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,char,int,char const*) ;
 int strlen (char*) ;

__attribute__((used)) static const char *
bits_to_string(ces_status_flags v, const char *cp)
{
 const char *np;
 char f, sep, *bp;
 static char buf[128];

 bp = buf;
 (void) memset(buf, 0, sizeof(buf));

 for (sep = '<'; (f = *cp++) != 0; cp = np) {
  for (np = cp; *np >= ' ';)
   np++;
  if (((int)v & (1 << (f - 1))) == 0)
   continue;
  (void) snprintf(bp, sizeof(buf) - (size_t)(bp - &buf[0]),
   "%c%.*s", sep, (int)(long)(np - cp), cp);
  bp += strlen(bp);
  sep = ',';
 }
 if (sep != '<')
  *bp = '>';

 return (buf);
}
