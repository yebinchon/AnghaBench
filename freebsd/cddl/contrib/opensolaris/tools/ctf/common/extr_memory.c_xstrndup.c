
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int memory_bailout () ;
 int strncpy (char*,char*,size_t) ;

char *
xstrndup(char *str, size_t len)
{
 char *newstr;

 if ((newstr = malloc(len + 1)) == ((void*)0))
  memory_bailout();

 (void) strncpy(newstr, str, len);
 newstr[len] = '\0';

 return (newstr);
}
