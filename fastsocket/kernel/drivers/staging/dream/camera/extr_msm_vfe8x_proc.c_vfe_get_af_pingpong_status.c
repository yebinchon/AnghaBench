
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 int EFAULT ;
 int VFE_AF_PINGPONG_STATUS_BIT ;
 scalar_t__ VFE_BUS_PINGPONG_STATUS ;
 TYPE_1__* ctrl ;
 int readl (scalar_t__) ;

__attribute__((used)) static int vfe_get_af_pingpong_status(void)
{
 uint32_t busPingPongStatus;
 int rc = 0;

 busPingPongStatus =
  readl(ctrl->vfebase + VFE_BUS_PINGPONG_STATUS);

 if ((busPingPongStatus & VFE_AF_PINGPONG_STATUS_BIT) == 0)
  return -EFAULT;

 return rc;
}
