
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int bits; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_4__ {TYPE_1__* devc; } ;


 TYPE_2__** audio_devs ;

__attribute__((used)) static unsigned int sb1_audio_set_bits(int dev, unsigned int bits)
{
 sb_devc *devc = audio_devs[dev]->devc;
 return devc->bits = 8;
}
