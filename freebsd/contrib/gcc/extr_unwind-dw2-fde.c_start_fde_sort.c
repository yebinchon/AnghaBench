
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fde_vector {int dummy; } ;
struct fde_accumulator {TYPE_2__* erratic; TYPE_1__* linear; } ;
typedef int fde ;
struct TYPE_4__ {scalar_t__ count; } ;
struct TYPE_3__ {scalar_t__ count; } ;


 void* malloc (size_t) ;

__attribute__((used)) static inline int
start_fde_sort (struct fde_accumulator *accu, size_t count)
{
  size_t size;
  if (! count)
    return 0;

  size = sizeof (struct fde_vector) + sizeof (const fde *) * count;
  if ((accu->linear = malloc (size)))
    {
      accu->linear->count = 0;
      if ((accu->erratic = malloc (size)))
 accu->erratic->count = 0;
      return 1;
    }
  else
    return 0;
}
