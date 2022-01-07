
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* basic_block ;
struct TYPE_3__ {scalar_t__ loop_father; } ;
typedef int FILE ;


 TYPE_1__* BASIC_BLOCK (int ) ;
 int NUM_FIXED_BLOCKS ;
 int print_loop (int *,scalar_t__,int ) ;

void
print_loop_ir (FILE *file)
{
  basic_block bb;

  bb = BASIC_BLOCK (NUM_FIXED_BLOCKS);
  if (bb && bb->loop_father)
    print_loop (file, bb->loop_father, 0);
}
