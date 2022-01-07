
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 char* malloc (scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
savestr(const char *s)
{
 char *p;

 if ((p = malloc(strlen(s) + 1)) == ((void*)0))
  error("Out of space");
 (void) strcpy(p, s);
 return p;
}
