
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long DEFAULT_POSIX2_VERSION ;
 long INT_MAX ;
 long INT_MIN ;
 char* getenv (char*) ;
 long strtol (char const*,char**,int) ;

int
posix2_version (void)
{
  long int v = DEFAULT_POSIX2_VERSION;
  char const *s = getenv ("_POSIX2_VERSION");

  if (s && *s)
    {
      char *e;
      long int i = strtol (s, &e, 10);
      if (! *e)
 v = i;
    }

  return v < INT_MIN ? INT_MIN : v < INT_MAX ? v : INT_MAX;
}
