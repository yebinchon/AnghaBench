
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int control_register; } ;


 int RME9652_control_register ;
 int rme9652_write (struct snd_rme9652*,int ,int) ;

__attribute__((used)) static void rme9652_spdif_set_bit (struct snd_rme9652 *rme9652, int mask, int onoff)
{
 if (onoff)
  rme9652->control_register |= mask;
 else
  rme9652->control_register &= ~mask;

 rme9652_write(rme9652, RME9652_control_register, rme9652->control_register);
}
