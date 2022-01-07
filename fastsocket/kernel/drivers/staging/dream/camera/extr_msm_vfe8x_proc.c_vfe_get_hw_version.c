
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_hw_ver {int majorVersion; int minorVersion; int coreVersion; } ;
struct vfe_cmd_hw_version {int majorVersion; int minorVersion; int coreVersion; } ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_HW_VERSION ;
 TYPE_1__* ctrl ;
 int readl (scalar_t__) ;

void vfe_get_hw_version(struct vfe_cmd_hw_version *out)
{
 uint32_t vfeHwVersionPacked;
 struct vfe_hw_ver ver;

 vfeHwVersionPacked = readl(ctrl->vfebase + VFE_HW_VERSION);

 ver = *((struct vfe_hw_ver *)&vfeHwVersionPacked);

 out->coreVersion = ver.coreVersion;
 out->minorVersion = ver.minorVersion;
 out->majorVersion = ver.majorVersion;
}
