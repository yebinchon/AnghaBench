
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
elem_compare (const void *elem1, const void *elem2)
{
  int e1 = * (const int *) elem1;
  int e2 = * (const int *) elem2;
  if (e1 < e2)
    return -1;
  else if (e1 > e2)
    return 1;
  else
    return 0;
}
