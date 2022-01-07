
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_ca0106 {scalar_t__ port; scalar_t__ capture_mic_line_in; } ;


 scalar_t__ GPIO ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static void ca0106_set_capture_mic_line_in(struct snd_ca0106 *emu)
{
 u32 tmp;

 if (emu->capture_mic_line_in) {

  tmp = inl(emu->port+GPIO) & ~0x400;
  tmp = tmp | 0x400;
  outl(tmp, emu->port+GPIO);

 } else {

  tmp = inl(emu->port+GPIO) & ~0x400;
  outl(tmp, emu->port+GPIO);

 }
}
