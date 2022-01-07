
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_ymfpci {TYPE_2__* controller_microcode; TYPE_1__* dsp_microcode; } ;
typedef int __le32 ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 scalar_t__ YDSXGR_CTRLINSTRAM ;
 scalar_t__ YDSXGR_DSPINSTRAM ;
 scalar_t__ YDSXGR_EFFCTRLBASE ;
 int YDSXGR_GLOBALCTRL ;
 scalar_t__ YDSXGR_MAPOFEFFECT ;
 scalar_t__ YDSXGR_MAPOFREC ;
 scalar_t__ YDSXGR_MODE ;
 scalar_t__ YDSXGR_NATIVEDACOUTVOL ;
 scalar_t__ YDSXGR_PLAYCTRLBASE ;
 scalar_t__ YDSXGR_RECCTRLBASE ;
 int YDSXG_CTRLLENGTH ;
 int YDSXG_DSPLENGTH ;
 int le32_to_cpu (int const) ;
 int snd_ymfpci_disable_dsp (struct snd_ymfpci*) ;
 int snd_ymfpci_enable_dsp (struct snd_ymfpci*) ;
 int snd_ymfpci_readw (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_writel (struct snd_ymfpci*,scalar_t__,int) ;
 int snd_ymfpci_writew (struct snd_ymfpci*,int ,int) ;

__attribute__((used)) static void snd_ymfpci_download_image(struct snd_ymfpci *chip)
{
 int i;
 u16 ctrl;
 const __le32 *inst;

 snd_ymfpci_writel(chip, YDSXGR_NATIVEDACOUTVOL, 0x00000000);
 snd_ymfpci_disable_dsp(chip);
 snd_ymfpci_writel(chip, YDSXGR_MODE, 0x00010000);
 snd_ymfpci_writel(chip, YDSXGR_MODE, 0x00000000);
 snd_ymfpci_writel(chip, YDSXGR_MAPOFREC, 0x00000000);
 snd_ymfpci_writel(chip, YDSXGR_MAPOFEFFECT, 0x00000000);
 snd_ymfpci_writel(chip, YDSXGR_PLAYCTRLBASE, 0x00000000);
 snd_ymfpci_writel(chip, YDSXGR_RECCTRLBASE, 0x00000000);
 snd_ymfpci_writel(chip, YDSXGR_EFFCTRLBASE, 0x00000000);
 ctrl = snd_ymfpci_readw(chip, YDSXGR_GLOBALCTRL);
 snd_ymfpci_writew(chip, YDSXGR_GLOBALCTRL, ctrl & ~0x0007);


 inst = (const __le32 *)chip->dsp_microcode->data;
 for (i = 0; i < YDSXG_DSPLENGTH / 4; i++)
  snd_ymfpci_writel(chip, YDSXGR_DSPINSTRAM + (i << 2),
      le32_to_cpu(inst[i]));


 inst = (const __le32 *)chip->controller_microcode->data;
 for (i = 0; i < YDSXG_CTRLLENGTH / 4; i++)
  snd_ymfpci_writel(chip, YDSXGR_CTRLINSTRAM + (i << 2),
      le32_to_cpu(inst[i]));

 snd_ymfpci_enable_dsp(chip);
}
