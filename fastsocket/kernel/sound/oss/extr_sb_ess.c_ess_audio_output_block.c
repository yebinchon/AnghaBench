
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ duplex; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_4__ {TYPE_1__* devc; } ;


 TYPE_2__** audio_devs ;
 int ess_audio_output_block_audio1 (int,unsigned long,int,int) ;
 int ess_audio_output_block_audio2 (int,unsigned long,int,int) ;

__attribute__((used)) static void ess_audio_output_block
 (int dev, unsigned long buf, int nr_bytes, int intrflag)
{
 sb_devc *devc = audio_devs[dev]->devc;

 if (devc->duplex) {
  ess_audio_output_block_audio2 (dev, buf, nr_bytes, intrflag);
 } else {
  ess_audio_output_block_audio1 (dev, buf, nr_bytes, intrflag);
 }
}
