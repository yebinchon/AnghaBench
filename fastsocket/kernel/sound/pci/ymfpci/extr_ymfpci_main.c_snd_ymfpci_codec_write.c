
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct snd_ymfpci {int dummy; } ;
struct snd_ac97 {struct snd_ymfpci* private_data; } ;


 int YDSXGR_AC97CMDDATA ;
 int YDSXG_AC97WRITECMD ;
 int snd_ymfpci_codec_ready (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_writel (struct snd_ymfpci*,int ,int) ;

__attribute__((used)) static void snd_ymfpci_codec_write(struct snd_ac97 *ac97, u16 reg, u16 val)
{
 struct snd_ymfpci *chip = ac97->private_data;
 u32 cmd;

 snd_ymfpci_codec_ready(chip, 0);
 cmd = ((YDSXG_AC97WRITECMD | reg) << 16) | val;
 snd_ymfpci_writel(chip, YDSXGR_AC97CMDDATA, cmd);
}
