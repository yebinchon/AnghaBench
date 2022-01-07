
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_es1688 {scalar_t__ hardware; int version; } ;


 scalar_t__ ES1688_HW_688 ;
 int sprintf (char*,char*,char*,int) ;

__attribute__((used)) static const char *snd_es1688_chip_id(struct snd_es1688 *chip)
{
 static char tmp[16];
 sprintf(tmp, "ES%s688 rev %i", chip->hardware == ES1688_HW_688 ? "" : "1", chip->version & 0x0f);
 return tmp;
}
