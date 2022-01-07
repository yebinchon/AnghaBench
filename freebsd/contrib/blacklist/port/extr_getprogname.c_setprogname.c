
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __progname ;
 char* strrchr (char*,char) ;

void
setprogname(char *p)
{
 char *q;
 if (p == ((void*)0))
  return;
 if ((q = strrchr(p, '/')) != ((void*)0))
  __progname = ++q;
 else
  __progname = p;
}
