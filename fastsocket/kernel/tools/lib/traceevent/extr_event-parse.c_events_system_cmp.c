
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_format {int name; int system; } ;


 int events_id_cmp (void const*,void const*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int events_system_cmp(const void *a, const void *b)
{
 struct event_format * const * ea = a;
 struct event_format * const * eb = b;
 int res;

 res = strcmp((*ea)->system, (*eb)->system);
 if (res)
  return res;

 res = strcmp((*ea)->name, (*eb)->name);
 if (res)
  return res;

 return events_id_cmp(a, b);
}
