
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imstt_par {scalar_t__ ramdac; int* cmap_regs; } ;


 int BPP16 ;
 scalar_t__ IBM ;
 size_t PIDXDATA ;
 size_t PIDXHI ;
 size_t PIDXLO ;
 size_t TVPADDRW ;
 size_t TVPIDATA ;
 int TVPIRTCC ;
 int eieio () ;

__attribute__((used)) static inline void
set_565 (struct imstt_par *par)
{
 if (par->ramdac == IBM) {
  par->cmap_regs[PIDXHI] = 0; eieio();
  par->cmap_regs[PIDXLO] = BPP16; eieio();
  par->cmap_regs[PIDXDATA] = 0x03; eieio();
 } else {
  par->cmap_regs[TVPADDRW] = TVPIRTCC; eieio();
  par->cmap_regs[TVPIDATA] = 0x45; eieio();
 }
}
