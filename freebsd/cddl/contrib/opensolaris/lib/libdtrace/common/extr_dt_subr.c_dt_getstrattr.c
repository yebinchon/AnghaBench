
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static char *
dt_getstrattr(char *p, char **qp)
{
 char *q;

 if (*p == '\0')
  return (((void*)0));

 if ((q = strchr(p, '/')) == ((void*)0))
  q = p + strlen(p);
 else
  *q++ = '\0';

 *qp = q;
 return (p);
}
