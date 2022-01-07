
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* basic_block ;
struct TYPE_3__ {scalar_t__ aux; } ;


 int block_aux_obstack ;
 scalar_t__ first_block_aux_obj ;
 int gcc_assert (int) ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ obstack_alloc (int *,int) ;

inline void
alloc_aux_for_block (basic_block bb, int size)
{

  gcc_assert (!bb->aux && first_block_aux_obj);
  bb->aux = obstack_alloc (&block_aux_obstack, size);
  memset (bb->aux, 0, size);
}
