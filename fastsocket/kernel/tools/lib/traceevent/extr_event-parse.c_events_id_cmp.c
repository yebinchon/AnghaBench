
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_format {scalar_t__ id; } ;



__attribute__((used)) static int events_id_cmp(const void *a, const void *b)
{
 struct event_format * const * ea = a;
 struct event_format * const * eb = b;

 if ((*ea)->id < (*eb)->id)
  return -1;

 if ((*ea)->id > (*eb)->id)
  return 1;

 return 0;
}
