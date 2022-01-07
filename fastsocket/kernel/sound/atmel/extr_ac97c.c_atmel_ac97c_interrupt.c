
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct atmel_ac97c {TYPE_1__* pdev; } ;
typedef scalar_t__ irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int AC97C_CSR_OVRUN ;
 int AC97C_CSR_RXRDY ;
 int AC97C_CSR_TXEMPTY ;
 int AC97C_CSR_TXRDY ;
 int AC97C_CSR_UNRUN ;
 int AC97C_SR_CAEVT ;
 int AC97C_SR_COEVT ;
 int CASR ;
 int COSR ;
 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 int SR ;
 int ac97c_readl (struct atmel_ac97c*,int ) ;
 int dev_err (int *,char*,int,int,int) ;
 int dev_info (int *,char*,char*,char*,char*,char*,char*,...) ;

__attribute__((used)) static irqreturn_t atmel_ac97c_interrupt(int irq, void *dev)
{
 struct atmel_ac97c *chip = (struct atmel_ac97c *)dev;
 irqreturn_t retval = IRQ_NONE;
 u32 sr = ac97c_readl(chip, SR);
 u32 casr = ac97c_readl(chip, CASR);
 u32 cosr = ac97c_readl(chip, COSR);

 if (sr & AC97C_SR_CAEVT) {
  dev_info(&chip->pdev->dev, "channel A event%s%s%s%s%s%s\n",
    casr & AC97C_CSR_OVRUN ? " OVRUN" : "",
    casr & AC97C_CSR_RXRDY ? " RXRDY" : "",
    casr & AC97C_CSR_UNRUN ? " UNRUN" : "",
    casr & AC97C_CSR_TXEMPTY ? " TXEMPTY" : "",
    casr & AC97C_CSR_TXRDY ? " TXRDY" : "",
    !casr ? " NONE" : "");
  retval = IRQ_HANDLED;
 }

 if (sr & AC97C_SR_COEVT) {
  dev_info(&chip->pdev->dev, "codec channel event%s%s%s%s%s\n",
    cosr & AC97C_CSR_OVRUN ? " OVRUN" : "",
    cosr & AC97C_CSR_RXRDY ? " RXRDY" : "",
    cosr & AC97C_CSR_TXEMPTY ? " TXEMPTY" : "",
    cosr & AC97C_CSR_TXRDY ? " TXRDY" : "",
    !cosr ? " NONE" : "");
  retval = IRQ_HANDLED;
 }

 if (retval == IRQ_NONE) {
  dev_err(&chip->pdev->dev, "spurious interrupt sr 0x%08x "
    "casr 0x%08x cosr 0x%08x\n", sr, casr, cosr);
 }

 return retval;
}
