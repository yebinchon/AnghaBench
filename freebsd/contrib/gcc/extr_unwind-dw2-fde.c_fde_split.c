
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct fde_vector {size_t count; int const** array; } ;
typedef scalar_t__ (* fde_compare_t ) (struct object*,int const*,int const*) ;
typedef int const fde ;


 int gcc_assert (int) ;

__attribute__((used)) static inline void
fde_split (struct object *ob, fde_compare_t fde_compare,
    struct fde_vector *linear, struct fde_vector *erratic)
{
  static const fde *marker;
  size_t count = linear->count;
  const fde **chain_end = &marker;
  size_t i, j, k;




  gcc_assert (sizeof (const fde *) == sizeof (const fde **));

  for (i = 0; i < count; i++)
    {
      const fde **probe;

      for (probe = chain_end;
    probe != &marker && fde_compare (ob, linear->array[i], *probe) < 0;
    probe = chain_end)
 {
   chain_end = (const fde **) erratic->array[probe - linear->array];
   erratic->array[probe - linear->array] = ((void*)0);
 }
      erratic->array[i] = (const fde *) chain_end;
      chain_end = &linear->array[i];
    }




  for (i = j = k = 0; i < count; i++)
    if (erratic->array[i])
      linear->array[j++] = linear->array[i];
    else
      erratic->array[k++] = linear->array[i];
  linear->count = j;
  erratic->count = k;
}
