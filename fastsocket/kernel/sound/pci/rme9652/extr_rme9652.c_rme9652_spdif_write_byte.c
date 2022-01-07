
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int dummy; } ;


 int RME9652_SPDIF_CLOCK ;
 int RME9652_SPDIF_WRITE ;
 int rme9652_spdif_set_bit (struct snd_rme9652*,int ,int) ;

__attribute__((used)) static void rme9652_spdif_write_byte (struct snd_rme9652 *rme9652, const int val)
{
 long mask;
 long i;

 for (i = 0, mask = 0x80; i < 8; i++, mask >>= 1) {
  if (val & mask)
   rme9652_spdif_set_bit (rme9652, RME9652_SPDIF_WRITE, 1);
  else
   rme9652_spdif_set_bit (rme9652, RME9652_SPDIF_WRITE, 0);

  rme9652_spdif_set_bit (rme9652, RME9652_SPDIF_CLOCK, 1);
  rme9652_spdif_set_bit (rme9652, RME9652_SPDIF_CLOCK, 0);
 }
}
