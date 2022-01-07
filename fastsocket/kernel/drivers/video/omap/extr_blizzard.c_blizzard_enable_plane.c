
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled_planes; } ;


 TYPE_1__ blizzard ;

__attribute__((used)) static int blizzard_enable_plane(int plane, int enable)
{
 if (enable)
  blizzard.enabled_planes |= 1 << plane;
 else
  blizzard.enabled_planes &= ~(1 << plane);

 return 0;
}
