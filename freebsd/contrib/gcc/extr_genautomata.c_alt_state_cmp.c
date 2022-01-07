
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_2__* alt_state_t ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct TYPE_3__ {scalar_t__ unique_num; } ;



__attribute__((used)) static int
alt_state_cmp (const void *alt_state_ptr_1, const void *alt_state_ptr_2)
{
  if ((*(alt_state_t *) alt_state_ptr_1)->state->unique_num
      == (*(alt_state_t *) alt_state_ptr_2)->state->unique_num)
    return 0;
  else if ((*(alt_state_t *) alt_state_ptr_1)->state->unique_num
    < (*(alt_state_t *) alt_state_ptr_2)->state->unique_num)
    return -1;
  else
    return 1;
}
