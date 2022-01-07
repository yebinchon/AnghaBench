
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable_union_info {scalar_t__ pos; int pos_dst; } ;



__attribute__((used)) static int
variable_union_info_cmp_pos (const void *n1, const void *n2)
{
  const struct variable_union_info *i1 = n1;
  const struct variable_union_info *i2 = n2;

  if (i1->pos != i2->pos)
    return i1->pos - i2->pos;

  return (i1->pos_dst - i2->pos_dst);
}
