
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wavnc_info ;


 int WACMD_GET_LEVEL ;
 int WACMD_SET_MIXER ;
 unsigned int waveartist_cmd1_r (int *,int) ;
 int waveartist_cmd3 (int *,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void
waveartist_set_adc_mux(wavnc_info *devc, char left_dev, char right_dev)
{
 unsigned int reg_08, reg_09;

 reg_08 = waveartist_cmd1_r(devc, WACMD_GET_LEVEL | 0x0800);
 reg_09 = waveartist_cmd1_r(devc, WACMD_GET_LEVEL | 0x0900);

 reg_08 = (reg_08 & ~0x3f) | right_dev << 3 | left_dev;

 waveartist_cmd3(devc, WACMD_SET_MIXER, reg_08, reg_09);
}
