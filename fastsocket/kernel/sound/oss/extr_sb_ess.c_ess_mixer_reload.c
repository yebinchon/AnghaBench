
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* levels; } ;
typedef TYPE_1__ sb_devc ;


 int sb_common_mixer_set (TYPE_1__*,int,int,int) ;

void ess_mixer_reload (sb_devc *devc, int dev)
{
 int left, right, value;

 value = devc->levels[dev];
 left = value & 0x000000ff;
 right = (value & 0x0000ff00) >> 8;

 sb_common_mixer_set(devc, dev, left, right);
}
