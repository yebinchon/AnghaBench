
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int unichar ;
struct TYPE_4__ {struct TYPE_4__* next; void* value; void* key; } ;
typedef TYPE_1__ rc_ver_stringinfo ;


 scalar_t__ res_alloc (int) ;
 void* unichar_dup (int const*) ;

rc_ver_stringinfo *
append_verval (rc_ver_stringinfo *strings, const unichar *key,
        const unichar *value)
{
  rc_ver_stringinfo *vs, **pp;

  vs = (rc_ver_stringinfo *) res_alloc (sizeof (rc_ver_stringinfo));
  vs->next = ((void*)0);
  vs->key = unichar_dup (key);
  vs->value = unichar_dup (value);

  for (pp = &strings; *pp != ((void*)0); pp = &(*pp)->next)
    ;
  *pp = vs;

  return strings;
}
