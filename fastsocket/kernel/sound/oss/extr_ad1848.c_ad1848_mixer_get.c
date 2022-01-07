
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int supported_devices; int* mixer_reroute; int* levels; } ;
typedef TYPE_1__ ad1848_info ;


 int EINVAL ;

__attribute__((used)) static int ad1848_mixer_get(ad1848_info * devc, int dev)
{
 if (!((1 << dev) & devc->supported_devices))
  return -EINVAL;

 dev = devc->mixer_reroute[dev];

 return devc->levels[dev];
}
