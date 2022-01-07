
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_pdacf {int dummy; } ;


 int PDAUDIOCF_PDN ;
 int PDAUDIOCF_RECORD ;
 int PDAUDIOCF_REG_SCR ;
 int PDAUDIOCF_RST ;
 int pdacf_reg_read (struct snd_pdacf*,int ) ;
 int pdacf_reg_write (struct snd_pdacf*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int pdacf_reset(struct snd_pdacf *chip, int powerdown)
{
 u16 val;

 val = pdacf_reg_read(chip, PDAUDIOCF_REG_SCR);
 val |= PDAUDIOCF_PDN;
 val &= ~PDAUDIOCF_RECORD;
 pdacf_reg_write(chip, PDAUDIOCF_REG_SCR, val);
 udelay(5);
 val |= PDAUDIOCF_RST;
 pdacf_reg_write(chip, PDAUDIOCF_REG_SCR, val);
 udelay(200);
 val &= ~PDAUDIOCF_RST;
 pdacf_reg_write(chip, PDAUDIOCF_REG_SCR, val);
 udelay(5);
 if (!powerdown) {
  val &= ~PDAUDIOCF_PDN;
  pdacf_reg_write(chip, PDAUDIOCF_REG_SCR, val);
  udelay(200);
 }
 return 0;
}
