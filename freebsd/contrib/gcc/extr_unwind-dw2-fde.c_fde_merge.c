
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct fde_vector {size_t count; int const** array; } ;
typedef scalar_t__ (* fde_compare_t ) (struct object*,int const*,int const*) ;
typedef int const fde ;



__attribute__((used)) static inline void
fde_merge (struct object *ob, fde_compare_t fde_compare,
    struct fde_vector *v1, struct fde_vector *v2)
{
  size_t i1, i2;
  const fde * fde2;

  i2 = v2->count;
  if (i2 > 0)
    {
      i1 = v1->count;
      do
 {
   i2--;
   fde2 = v2->array[i2];
   while (i1 > 0 && fde_compare (ob, v1->array[i1-1], fde2) > 0)
     {
       v1->array[i1+i2] = v1->array[i1-1];
       i1--;
     }
   v1->array[i1+i2] = fde2;
 }
      while (i2 > 0);
      v1->count += v2->count;
    }
}
