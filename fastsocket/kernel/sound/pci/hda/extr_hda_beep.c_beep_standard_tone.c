
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_beep {int dummy; } ;



__attribute__((used)) static int beep_standard_tone(struct hda_beep *beep, int hz)
{
 if (hz <= 0)
  return 0;
 hz = 12000 / hz;
 if (hz > 0xff)
  return 0xff;
 if (hz <= 0)
  return 1;
 return hz;
}
