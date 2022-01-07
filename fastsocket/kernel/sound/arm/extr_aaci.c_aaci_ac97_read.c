
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned short u32 ;
struct snd_ac97 {int num; struct aaci* private_data; } ;
struct aaci {int ac97_sem; TYPE_1__* dev; scalar_t__ base; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ AACI_SL1RX ;
 scalar_t__ AACI_SL1TX ;
 scalar_t__ AACI_SL2RX ;
 scalar_t__ AACI_SLFR ;
 unsigned short SLFR_1RXV ;
 unsigned short SLFR_1TXB ;
 unsigned short SLFR_2RXV ;
 int aaci_ac97_select_codec (struct aaci*,struct snd_ac97*) ;
 int cond_resched () ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (unsigned short,scalar_t__) ;

__attribute__((used)) static unsigned short aaci_ac97_read(struct snd_ac97 *ac97, unsigned short reg)
{
 struct aaci *aaci = ac97->private_data;
 u32 v;
 int timeout = 5000;
 int retries = 10;

 if (ac97->num >= 4)
  return ~0;

 mutex_lock(&aaci->ac97_sem);

 aaci_ac97_select_codec(aaci, ac97);




 writel((reg << 12) | (1 << 19), aaci->base + AACI_SL1TX);




 do {
  v = readl(aaci->base + AACI_SLFR);
 } while ((v & SLFR_1TXB) && --timeout);

 if (!timeout) {
  dev_err(&aaci->dev->dev, "timeout on slot 1 TX busy\n");
  v = ~0;
  goto out;
 }





 udelay(42);




 timeout = 5000;
 do {
  cond_resched();
  v = readl(aaci->base + AACI_SLFR) & (SLFR_1RXV|SLFR_2RXV);
 } while ((v != (SLFR_1RXV|SLFR_2RXV)) && --timeout);

 if (!timeout) {
  dev_err(&aaci->dev->dev, "timeout on RX valid\n");
  v = ~0;
  goto out;
 }

 do {
  v = readl(aaci->base + AACI_SL1RX) >> 12;
  if (v == reg) {
   v = readl(aaci->base + AACI_SL2RX) >> 4;
   break;
  } else if (--retries) {
   dev_warn(&aaci->dev->dev,
     "ac97 read back fail.  retry\n");
   continue;
  } else {
   dev_warn(&aaci->dev->dev,
    "wrong ac97 register read back (%x != %x)\n",
    v, reg);
   v = ~0;
  }
 } while (retries);
 out:
 mutex_unlock(&aaci->ac97_sem);
 return v;
}
