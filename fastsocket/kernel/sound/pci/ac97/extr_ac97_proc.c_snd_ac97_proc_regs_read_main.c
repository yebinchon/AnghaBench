
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct snd_ac97 {int dummy; } ;


 int snd_ac97_read (struct snd_ac97*,int) ;
 int snd_iprintf (struct snd_info_buffer*,char*,int,int,int) ;

__attribute__((used)) static void snd_ac97_proc_regs_read_main(struct snd_ac97 *ac97, struct snd_info_buffer *buffer, int subidx)
{
 int reg, val;

 for (reg = 0; reg < 0x80; reg += 2) {
  val = snd_ac97_read(ac97, reg);
  snd_iprintf(buffer, "%i:%02x = %04x\n", subidx, reg, val);
 }
}
