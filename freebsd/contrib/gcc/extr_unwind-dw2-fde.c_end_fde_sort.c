
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ encoding; scalar_t__ mixed_encoding; } ;
struct TYPE_10__ {TYPE_1__ b; } ;
struct object {TYPE_2__ s; } ;
struct fde_accumulator {TYPE_3__* linear; TYPE_3__* erratic; } ;
typedef int fde_compare_t ;
struct TYPE_11__ {size_t count; } ;


 scalar_t__ DW_EH_PE_absptr ;
 int fde_merge (struct object*,int ,TYPE_3__*,TYPE_3__*) ;
 int fde_mixed_encoding_compare ;
 int fde_single_encoding_compare ;
 int fde_split (struct object*,int ,TYPE_3__*,TYPE_3__*) ;
 int fde_unencoded_compare ;
 int frame_heapsort (struct object*,int ,TYPE_3__*) ;
 int free (TYPE_3__*) ;
 int gcc_assert (int) ;

__attribute__((used)) static inline void
end_fde_sort (struct object *ob, struct fde_accumulator *accu, size_t count)
{
  fde_compare_t fde_compare;

  gcc_assert (!accu->linear || accu->linear->count == count);

  if (ob->s.b.mixed_encoding)
    fde_compare = fde_mixed_encoding_compare;
  else if (ob->s.b.encoding == DW_EH_PE_absptr)
    fde_compare = fde_unencoded_compare;
  else
    fde_compare = fde_single_encoding_compare;

  if (accu->erratic)
    {
      fde_split (ob, fde_compare, accu->linear, accu->erratic);
      gcc_assert (accu->linear->count + accu->erratic->count == count);
      frame_heapsort (ob, fde_compare, accu->erratic);
      fde_merge (ob, fde_compare, accu->linear, accu->erratic);
      free (accu->erratic);
    }
  else
    {


      frame_heapsort (ob, fde_compare, accu->linear);
    }
}
