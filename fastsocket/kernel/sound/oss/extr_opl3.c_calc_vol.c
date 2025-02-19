
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* fm_volume_table ;

__attribute__((used)) static void calc_vol(unsigned char *regbyte, int volume, int main_vol)
{
 int level = (~*regbyte & 0x3f);

 if (main_vol > 127)
  main_vol = 127;
 volume = (volume * main_vol) / 127;

 if (level)
  level += fm_volume_table[volume];

 if (level > 0x3f)
  level = 0x3f;
 if (level < 0)
  level = 0;

 *regbyte = (*regbyte & 0xc0) | (~level & 0x3f);
}
