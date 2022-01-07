
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {scalar_t__ accesses_prev_frame; } ;


 scalar_t__ SUBTARGET_FRAME_POINTER_REQUIRED ;
 scalar_t__ TARGET_OMIT_LEAF_FRAME_POINTER ;
 TYPE_2__* cfun ;
 int current_function_is_leaf ;
 scalar_t__ current_function_profile ;
 scalar_t__ ix86_current_function_calls_tls_descriptor ;

int
ix86_frame_pointer_required (void)
{


  if (cfun->machine->accesses_prev_frame)
    return 1;



  if (SUBTARGET_FRAME_POINTER_REQUIRED)
    return 1;




  if (TARGET_OMIT_LEAF_FRAME_POINTER
      && (!current_function_is_leaf
   || ix86_current_function_calls_tls_descriptor))
    return 1;

  if (current_function_profile)
    return 1;

  return 0;
}
