
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nomem () ;
 char* strdup (char*) ;

__attribute__((used)) static char *
safe_strdup(char *str)
{
 char *dupstr = strdup(str);

 if (dupstr == ((void*)0))
  nomem();

 return (dupstr);
}
