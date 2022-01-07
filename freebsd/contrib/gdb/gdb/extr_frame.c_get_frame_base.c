
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame_info {int dummy; } ;
struct TYPE_2__ {int stack_addr; } ;
typedef int CORE_ADDR ;


 TYPE_1__ get_frame_id (struct frame_info*) ;

CORE_ADDR
get_frame_base (struct frame_info *fi)
{
  return get_frame_id (fi).stack_addr;
}
