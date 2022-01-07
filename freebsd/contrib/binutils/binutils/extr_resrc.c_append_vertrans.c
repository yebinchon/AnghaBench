
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; void* charset; void* language; } ;
typedef TYPE_1__ rc_ver_varinfo ;
typedef void* rc_uint_type ;


 scalar_t__ res_alloc (int) ;

rc_ver_varinfo *
append_vertrans (rc_ver_varinfo *var, rc_uint_type language,
   rc_uint_type charset)
{
  rc_ver_varinfo *vv, **pp;

  vv = (rc_ver_varinfo *) res_alloc (sizeof (rc_ver_varinfo));
  vv->next = ((void*)0);
  vv->language = language;
  vv->charset = charset;

  for (pp = &var; *pp != ((void*)0); pp = &(*pp)->next)
    ;
  *pp = vv;

  return var;
}
