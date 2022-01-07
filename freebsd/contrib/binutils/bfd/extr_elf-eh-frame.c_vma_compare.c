
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eh_frame_array_ent {scalar_t__ initial_loc; } ;



__attribute__((used)) static int
vma_compare (const void *a, const void *b)
{
  const struct eh_frame_array_ent *p = a;
  const struct eh_frame_array_ent *q = b;
  if (p->initial_loc > q->initial_loc)
    return 1;
  if (p->initial_loc < q->initial_loc)
    return -1;
  return 0;
}
