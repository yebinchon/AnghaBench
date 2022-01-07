
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_ac97 {int num; struct aaci* private_data; } ;
struct aaci {int ac97_sem; TYPE_1__* dev; scalar_t__ base; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ AACI_SL1TX ;
 scalar_t__ AACI_SL2TX ;
 scalar_t__ AACI_SLFR ;
 int SLFR_1TXB ;
 int SLFR_2TXB ;
 int aaci_ac97_select_codec (struct aaci*,struct snd_ac97*) ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int writel (unsigned short,scalar_t__) ;

__attribute__((used)) static void aaci_ac97_write(struct snd_ac97 *ac97, unsigned short reg,
       unsigned short val)
{
 struct aaci *aaci = ac97->private_data;
 u32 v;
 int timeout = 5000;

 if (ac97->num >= 4)
  return;

 mutex_lock(&aaci->ac97_sem);

 aaci_ac97_select_codec(aaci, ac97);





 writel(val << 4, aaci->base + AACI_SL2TX);
 writel(reg << 12, aaci->base + AACI_SL1TX);




 do {
  v = readl(aaci->base + AACI_SLFR);
 } while ((v & (SLFR_1TXB|SLFR_2TXB)) && --timeout);

 if (!timeout)
  dev_err(&aaci->dev->dev,
   "timeout waiting for write to complete\n");

 mutex_unlock(&aaci->ac97_sem);
}
