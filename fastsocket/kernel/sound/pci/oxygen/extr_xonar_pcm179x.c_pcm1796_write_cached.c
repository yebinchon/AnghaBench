
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct xonar_pcm179x {size_t** pcm1796_regs; } ;
struct oxygen {struct xonar_pcm179x* model_data; } ;


 size_t PCM1796_REG_BASE ;
 int pcm1796_write (struct oxygen*,unsigned int,size_t,size_t) ;

__attribute__((used)) static void pcm1796_write_cached(struct oxygen *chip, unsigned int codec,
     u8 reg, u8 value)
{
 struct xonar_pcm179x *data = chip->model_data;

 if (value != data->pcm1796_regs[codec][reg - PCM1796_REG_BASE])
  pcm1796_write(chip, codec, reg, value);
}
