
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int cur_region; } ;


 TYPE_2__* cfun ;
 int note_eh_region_may_contain_throw (int ) ;

void
note_current_region_may_contain_throw (void)
{
  note_eh_region_may_contain_throw (cfun->eh->cur_region);
}
