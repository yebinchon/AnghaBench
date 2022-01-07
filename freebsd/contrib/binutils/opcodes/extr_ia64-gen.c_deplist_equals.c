
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deplist {int len; scalar_t__* deps; } ;



__attribute__((used)) static int
deplist_equals (struct deplist *d1, struct deplist *d2)
{
  int i;

  if (d1->len != d2->len)
    return 0;

  for (i = 0; i < d1->len; i++)
    if (d1->deps[i] != d2->deps[i])
      return 0;

  return 1;
}
