
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rm_so; } ;
typedef TYPE_1__ regmatch_t ;


 int bufsz ;
 int free (char*) ;
 char* regmatch_cpy (TYPE_1__*,char*,char const*) ;
 char* regmatch_dup (TYPE_1__*,char const*) ;
 int regmatch_len (TYPE_1__*) ;
 int strtol (char*,char**,int) ;

int regmatch_strtol (regmatch_t * m, const char *src, char **endptr,
       int base)
{
 int n = 0;


 char buf[20];
 char *s;

 if (m == ((void*)0) || m->rm_so < 0)
  return 0;

 if (regmatch_len (m) < 20)
  s = regmatch_cpy (m, buf, src);
 else
  s = regmatch_dup (m, src);

 n = strtol (s, endptr, base);

 if (s != buf)
  free (s);

 return n;
}
