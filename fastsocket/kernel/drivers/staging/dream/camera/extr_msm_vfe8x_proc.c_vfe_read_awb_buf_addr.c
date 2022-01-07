
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ boolean ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ FALSE ;
 scalar_t__ VFE_BUS_STATS_AWB_WR_PING_ADDR ;
 scalar_t__ VFE_BUS_STATS_AWB_WR_PONG_ADDR ;
 TYPE_1__* ctrl ;
 int readl (scalar_t__) ;

__attribute__((used)) static uint32_t
vfe_read_awb_buf_addr(boolean pingpong)
{
 if (pingpong == FALSE)
  return readl(ctrl->vfebase + VFE_BUS_STATS_AWB_WR_PING_ADDR);
 else
  return readl(ctrl->vfebase + VFE_BUS_STATS_AWB_WR_PONG_ADDR);
}
