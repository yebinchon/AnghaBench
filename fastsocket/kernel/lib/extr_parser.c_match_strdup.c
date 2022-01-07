
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int to; int from; } ;
typedef TYPE_1__ substring_t ;


 int GFP_KERNEL ;
 char* kmalloc (size_t,int ) ;
 int match_strlcpy (char*,TYPE_1__ const*,size_t) ;

char *match_strdup(const substring_t *s)
{
 size_t sz = s->to - s->from + 1;
 char *p = kmalloc(sz, GFP_KERNEL);
 if (p)
  match_strlcpy(p, s, sz);
 return p;
}
