
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * valid_pch; } ;
struct TYPE_3__ {int (* gt_pch_use_address ) (int *,int ,int,int ) ;} ;


 TYPE_2__* cpp_get_callbacks (int ) ;
 TYPE_1__ host_hooks ;
 int parse_in ;
 int stub1 (int *,int ,int,int ) ;

void
c_common_no_more_pch (void)
{
  if (cpp_get_callbacks (parse_in)->valid_pch)
    {
      cpp_get_callbacks (parse_in)->valid_pch = ((void*)0);
      host_hooks.gt_pch_use_address (((void*)0), 0, -1, 0);
    }
}
