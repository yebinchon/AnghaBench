
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int supported_devices; int* levels; } ;
typedef TYPE_1__ sb_devc ;


 int EINVAL ;

__attribute__((used)) static int sb_mixer_get(sb_devc * devc, int dev)
{
 if (!((1 << dev) & devc->supported_devices))
  return -EINVAL;
 return devc->levels[dev];
}
