
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_opl4 {scalar_t__ pcm_port; } ;


 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int snd_opl4_wait (struct snd_opl4*) ;

u8 snd_opl4_read(struct snd_opl4 *opl4, u8 reg)
{
 snd_opl4_wait(opl4);
 outb(reg, opl4->pcm_port);

 snd_opl4_wait(opl4);
 return inb(opl4->pcm_port + 1);
}
