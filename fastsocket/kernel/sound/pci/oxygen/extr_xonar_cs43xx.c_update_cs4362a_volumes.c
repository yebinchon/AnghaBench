
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {int* dac_volume; scalar_t__ dac_mute; } ;


 int CS4362A_MUTE ;
 int cs4362a_write_cached (struct oxygen*,int,int) ;

__attribute__((used)) static void update_cs4362a_volumes(struct oxygen *chip)
{
 unsigned int i;
 u8 mute;

 mute = chip->dac_mute ? CS4362A_MUTE : 0;
 for (i = 0; i < 6; ++i)
  cs4362a_write_cached(chip, 7 + i + i / 2,
         (127 - chip->dac_volume[2 + i]) | mute);
}
