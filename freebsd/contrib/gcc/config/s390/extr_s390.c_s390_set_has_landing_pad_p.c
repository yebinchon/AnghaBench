
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int has_landing_pad_p; } ;


 TYPE_2__* cfun ;

void
s390_set_has_landing_pad_p (bool value)
{
  cfun->machine->has_landing_pad_p = value;
}
