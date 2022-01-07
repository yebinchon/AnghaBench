
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1938 {scalar_t__ dma1_size; int dma1_start; } ;


 int DMAADDR ;
 int DMACLEAR ;
 int DMACOMMAND ;
 int DMACOUNT ;
 int DMAMASK ;
 int DMAMODE ;
 int SLDM_REG (struct es1938*,int ) ;
 int outb (int,int ) ;
 int outl (int ,int ) ;
 int outw (scalar_t__,int ) ;

__attribute__((used)) static void snd_es1938_playback2_setdma(struct es1938 *chip)
{

 outb(0xc4, SLDM_REG(chip, DMACOMMAND));

 outb(0, SLDM_REG(chip, DMACLEAR));

 outb(1, SLDM_REG(chip, DMAMASK));
 outb(0x18, SLDM_REG(chip, DMAMODE));
 outl(chip->dma1_start, SLDM_REG(chip, DMAADDR));
 outw(chip->dma1_size - 1, SLDM_REG(chip, DMACOUNT));

 outb(0, SLDM_REG(chip, DMAMASK));
}
