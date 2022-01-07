
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;


 int _ (char*) ;
 scalar_t__ flex_alloc (int) ;
 int flexfatal (int ) ;
 int strncpy (char*,char const*,int) ;

char *regmatch_dup (regmatch_t * m, const char *src)
{
 char *str;
 int len;

 if (m == ((void*)0) || m->rm_so < 0)
  return ((void*)0);
 len = m->rm_eo - m->rm_so;
 str = (char *) flex_alloc ((len + 1) * sizeof (char));
 if (!str)
  flexfatal(_("Unable to allocate a copy of the match"));
 strncpy (str, src + m->rm_so, len);
 str[len] = 0;
 return str;
}
