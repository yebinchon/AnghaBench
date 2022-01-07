
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidp ;


 int malloc_verify () ;
 int strlen (char*) ;
 scalar_t__ xrealloc (int ,size_t) ;
 int xstrlcpy (char*,char*,size_t) ;

char *
strealloc(char *p, char *s)
{
  size_t len = strlen(s) + 1;

  p = (char *) xrealloc((voidp) p, len);

  xstrlcpy(p, s, len);





  return p;
}
