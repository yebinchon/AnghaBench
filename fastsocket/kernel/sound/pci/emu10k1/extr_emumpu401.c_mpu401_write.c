
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1_midi {scalar_t__ port; } ;
struct snd_emu10k1 {scalar_t__ port; scalar_t__ audigy; } ;


 int outb (int,scalar_t__) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,scalar_t__,int ,int) ;

__attribute__((used)) static inline void mpu401_write(struct snd_emu10k1 *emu,
    struct snd_emu10k1_midi *mpu, int data, int idx)
{
 if (emu->audigy)
  snd_emu10k1_ptr_write(emu, mpu->port + idx, 0, data);
 else
  outb(data, emu->port + mpu->port + idx);
}
