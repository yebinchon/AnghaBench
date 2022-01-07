
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inc ;
typedef size_t Boolean ;


 size_t FALSE ;
 scalar_t__ isspace (unsigned char) ;
 int * strchr (char*,char const) ;
 scalar_t__ strncmp (char const*,char const*,size_t const) ;

__attribute__((used)) static Boolean
IsInclude(const char *line, Boolean sysv)
{
 static const char inc[] = "include";
 static const size_t inclen = sizeof(inc) - 1;


 int o = strchr(&("ds-"[sysv]), *line) != ((void*)0);

 if (strncmp(line + o, inc, inclen) != 0)
  return FALSE;


 return !sysv || isspace((unsigned char)line[inclen + o]);
}
