
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 int error (char*,char const*) ;
 int is_number (char const*) ;

int
number(const char *s)
{
 if (! is_number(s))
  error("Illegal number: %s", s);
 return atoi(s);
}
