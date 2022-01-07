
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_m3 {int dummy; } ;


 int DSP_PORT_MEMORY_DATA ;
 int DSP_PORT_MEMORY_INDEX ;
 int DSP_PORT_MEMORY_TYPE ;
 int MEMTYPE_MASK ;
 int snd_m3_inw (struct snd_m3*,int ) ;
 int snd_m3_outw (struct snd_m3*,int,int ) ;

__attribute__((used)) static u16 snd_m3_assp_read(struct snd_m3 *chip, u16 region, u16 index)
{
 snd_m3_outw(chip, region & MEMTYPE_MASK, DSP_PORT_MEMORY_TYPE);
 snd_m3_outw(chip, index, DSP_PORT_MEMORY_INDEX);
 return snd_m3_inw(chip, DSP_PORT_MEMORY_DATA);
}
