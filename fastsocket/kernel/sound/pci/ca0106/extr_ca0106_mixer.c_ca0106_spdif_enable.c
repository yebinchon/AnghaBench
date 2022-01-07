
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca0106 {scalar_t__ port; scalar_t__ spdif_enable; } ;


 int CAPTURE_CONTROL ;
 scalar_t__ GPIO ;
 int SPDIF_SELECT1 ;
 int SPDIF_SELECT2 ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int snd_ca0106_ptr_read (struct snd_ca0106*,int ,int ) ;
 int snd_ca0106_ptr_write (struct snd_ca0106*,int ,int ,unsigned int) ;

__attribute__((used)) static void ca0106_spdif_enable(struct snd_ca0106 *emu)
{
 unsigned int val;

 if (emu->spdif_enable) {

  snd_ca0106_ptr_write(emu, SPDIF_SELECT1, 0, 0xf);
  snd_ca0106_ptr_write(emu, SPDIF_SELECT2, 0, 0x0b000000);
  val = snd_ca0106_ptr_read(emu, CAPTURE_CONTROL, 0) & ~0x1000;
  snd_ca0106_ptr_write(emu, CAPTURE_CONTROL, 0, val);
  val = inl(emu->port + GPIO) & ~0x101;
  outl(val, emu->port + GPIO);

 } else {

  snd_ca0106_ptr_write(emu, SPDIF_SELECT1, 0, 0xf);
  snd_ca0106_ptr_write(emu, SPDIF_SELECT2, 0, 0x000f0000);
  val = snd_ca0106_ptr_read(emu, CAPTURE_CONTROL, 0) | 0x1000;
  snd_ca0106_ptr_write(emu, CAPTURE_CONTROL, 0, val);
  val = inl(emu->port + GPIO) | 0x101;
  outl(val, emu->port + GPIO);
 }
}
