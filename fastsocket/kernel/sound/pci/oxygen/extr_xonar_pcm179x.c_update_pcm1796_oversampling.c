
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xonar_pcm179x {int current_rate; unsigned int dacs; int h6; } ;
struct oxygen {struct xonar_pcm179x* model_data; } ;


 int PCM1796_OS_128 ;
 int PCM1796_OS_64 ;
 int pcm1796_write_cached (struct oxygen*,unsigned int,int,int ) ;

__attribute__((used)) static void update_pcm1796_oversampling(struct oxygen *chip)
{
 struct xonar_pcm179x *data = chip->model_data;
 unsigned int i;
 u8 reg;

 if (data->current_rate <= 48000 && !data->h6)
  reg = PCM1796_OS_128;
 else
  reg = PCM1796_OS_64;
 for (i = 0; i < data->dacs; ++i)
  pcm1796_write_cached(chip, i, 20, reg);
}
