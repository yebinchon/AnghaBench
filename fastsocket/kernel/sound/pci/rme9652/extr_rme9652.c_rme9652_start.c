
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int control_register; } ;


 int RME9652_IE ;
 int RME9652_control_register ;
 int RME9652_start_bit ;
 int rme9652_write (struct snd_rme9652*,int ,int) ;

__attribute__((used)) static inline void rme9652_start(struct snd_rme9652 *s)
{
 s->control_register |= (RME9652_IE | RME9652_start_bit);
 rme9652_write(s, RME9652_control_register, s->control_register);
}
