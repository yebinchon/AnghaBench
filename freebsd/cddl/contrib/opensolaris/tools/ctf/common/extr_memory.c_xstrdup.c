
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memory_bailout () ;
 char* strdup (char const*) ;

char *
xstrdup(const char *str)
{
 char *newstr;

 if ((newstr = strdup(str)) == ((void*)0))
  memory_bailout();

 return (newstr);
}
