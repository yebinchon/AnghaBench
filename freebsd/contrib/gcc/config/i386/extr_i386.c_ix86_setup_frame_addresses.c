
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int accesses_prev_frame; } ;


 TYPE_2__* cfun ;

void
ix86_setup_frame_addresses (void)
{
  cfun->machine->accesses_prev_frame = 1;
}
