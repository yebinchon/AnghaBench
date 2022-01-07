
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flex_array_part {scalar_t__* elements; } ;


 scalar_t__ FLEX_ARRAY_FREE ;

__attribute__((used)) static int part_is_free(struct flex_array_part *part)
{
 int i;

 for (i = 0; i < sizeof(struct flex_array_part); i++)
  if (part->elements[i] != FLEX_ARRAY_FREE)
   return 0;
 return 1;
}
