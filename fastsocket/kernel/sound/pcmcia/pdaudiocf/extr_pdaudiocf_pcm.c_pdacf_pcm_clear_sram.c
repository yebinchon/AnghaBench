
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pdacf {scalar_t__ port; } ;


 int EIO ;
 scalar_t__ PDAUDIOCF_REG_MD ;
 scalar_t__ PDAUDIOCF_REG_RDP ;
 scalar_t__ PDAUDIOCF_REG_WDP ;
 scalar_t__ inw (scalar_t__) ;

__attribute__((used)) static int pdacf_pcm_clear_sram(struct snd_pdacf *chip)
{
 int max_loop = 64 * 1024;

 while (inw(chip->port + PDAUDIOCF_REG_RDP) != inw(chip->port + PDAUDIOCF_REG_WDP)) {
  if (max_loop-- < 0)
   return -EIO;
  inw(chip->port + PDAUDIOCF_REG_MD);
 }
 return 0;
}
