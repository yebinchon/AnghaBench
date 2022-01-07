
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expected (char*,char*,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static char *
number(char *cp, int *n)
{
 char *next;

 *n = (int)strtol(cp, &next, 10);
 if (next == cp)
  expected("number", "<number>", cp);
 return (next);
}
