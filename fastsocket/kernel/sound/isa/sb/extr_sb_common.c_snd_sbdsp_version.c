
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int dummy; } ;


 unsigned int ENODEV ;
 int SB_DSP_GET_VERSION ;
 int snd_sbdsp_command (struct snd_sb*,int ) ;
 scalar_t__ snd_sbdsp_get_byte (struct snd_sb*) ;

__attribute__((used)) static int snd_sbdsp_version(struct snd_sb * chip)
{
 unsigned int result = -ENODEV;

 snd_sbdsp_command(chip, SB_DSP_GET_VERSION);
 result = (short) snd_sbdsp_get_byte(chip) << 8;
 result |= (short) snd_sbdsp_get_byte(chip);
 return result;
}
