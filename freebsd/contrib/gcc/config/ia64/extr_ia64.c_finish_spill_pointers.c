
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int gr_used_mask; } ;
struct TYPE_3__ {int save_gr_used_mask; } ;


 TYPE_2__ current_frame_info ;
 TYPE_1__ spill_fill_data ;

__attribute__((used)) static void
finish_spill_pointers (void)
{
  current_frame_info.gr_used_mask = spill_fill_data.save_gr_used_mask;
}
