
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const CCTL ;
 int CHECKSTRSPACE (int,char*) ;
 int CTLESC ;
 int USTPUTC (int ,char*) ;

__attribute__((used)) static char *
stputs_quotes(const char *data, const char *syntax, char *p)
{
 while (*data) {
  CHECKSTRSPACE(2, p);
  if (syntax[(int)*data] == CCTL)
   USTPUTC(CTLESC, p);
  USTPUTC(*data++, p);
 }
 return (p);
}
