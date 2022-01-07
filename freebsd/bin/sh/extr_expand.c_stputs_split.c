
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worddest {int dummy; } ;


 char const CCTL ;
 int CHECKSTRSPACE (int,char*) ;
 char CTLESC ;
 int EXP_GLOB ;
 int NEXTWORD (char,int,char*,struct worddest*) ;
 int USTPUTC (char,char*) ;
 scalar_t__ ifsset () ;
 char* ifsval () ;
 int * strchr (char const*,char) ;

__attribute__((used)) static char *
stputs_split(const char *data, const char *syntax, int flag, char *p,
    struct worddest *dst)
{
 const char *ifs;
 char c;

 ifs = ifsset() ? ifsval() : " \t\n";
 while (*data) {
  CHECKSTRSPACE(2, p);
  c = *data++;
  if (strchr(ifs, c) != ((void*)0)) {
   NEXTWORD(c, flag, p, dst);
   continue;
  }
  if (flag & EXP_GLOB && syntax[(int)c] == CCTL)
   USTPUTC(CTLESC, p);
  USTPUTC(c, p);
 }
 return (p);
}
