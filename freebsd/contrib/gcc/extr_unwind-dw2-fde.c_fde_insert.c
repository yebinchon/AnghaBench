
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fde_accumulator {TYPE_1__* linear; } ;
typedef int fde ;
struct TYPE_2__ {int count; int const** array; } ;



__attribute__((used)) static inline void
fde_insert (struct fde_accumulator *accu, const fde *this_fde)
{
  if (accu->linear)
    accu->linear->array[accu->linear->count++] = this_fde;
}
