
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rm_so; } ;
typedef TYPE_1__ regmatch_t ;


 int regmatch_len (TYPE_1__*) ;
 int snprintf (char*,int ,char*,char const*) ;

char *regmatch_cpy (regmatch_t * m, char *dest, const char *src)
{
 if (m == ((void*)0) || m->rm_so < 0) {
  if (dest)
   dest[0] = '\0';
  return dest;
 }

 snprintf (dest, regmatch_len(m), "%s", src + m->rm_so);
    return dest;
}
