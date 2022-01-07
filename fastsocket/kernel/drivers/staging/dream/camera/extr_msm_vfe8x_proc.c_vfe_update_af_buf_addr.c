
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ boolean ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ FALSE ;
 scalar_t__ VFE_BUS_STATS_AF_WR_PING_ADDR ;
 scalar_t__ VFE_BUS_STATS_AF_WR_PONG_ADDR ;
 TYPE_1__* ctrl ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
vfe_update_af_buf_addr(boolean pipo, uint32_t addr)
{
 if (pipo == FALSE)
  writel(addr, ctrl->vfebase + VFE_BUS_STATS_AF_WR_PING_ADDR);
 else
  writel(addr, ctrl->vfebase + VFE_BUS_STATS_AF_WR_PONG_ADDR);
}
