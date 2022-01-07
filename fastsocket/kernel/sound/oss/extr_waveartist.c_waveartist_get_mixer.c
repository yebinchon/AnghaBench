
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* levels; } ;
typedef TYPE_1__ wavnc_info ;



__attribute__((used)) static int waveartist_get_mixer(wavnc_info *devc, int dev)
{
 return devc->levels[dev];
}
