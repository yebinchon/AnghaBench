
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {size_t clkSource; int clkSrcRate; int clkRate; size_t cardState; } ;
typedef enum ClockSourceIndex { ____Placeholder_ClockSourceIndex } ClockSourceIndex ;


 int * ClockSourceSelector ;
 int EBUSY ;
 int EINVAL ;
 int INTERCOMMAND_DELAY ;






 int K1212_DB_SetClockSourceRate ;
 int K1212_DEBUG_PRINTK (char*,int,int ) ;
 int snd_korg1212_Send1212Command (struct snd_korg1212*,int ,int ,int ,int ,int ) ;
 int snd_korg1212_use_is_exclusive (struct snd_korg1212*) ;
 int * stateName ;
 int udelay (int ) ;

__attribute__((used)) static int snd_korg1212_SetRate(struct snd_korg1212 *korg1212, int rate)
{
        static enum ClockSourceIndex s44[] = {
  133,
  129,
  131
 };
        static enum ClockSourceIndex s48[] = {
  132,
  128,
  130
 };
        int parm, rc;

 if (!snd_korg1212_use_is_exclusive (korg1212))
  return -EBUSY;

 switch (rate) {
 case 44100:
  parm = s44[korg1212->clkSource];
  break;

 case 48000:
  parm = s48[korg1212->clkSource];
  break;

 default:
  return -EINVAL;
 }

        korg1212->clkSrcRate = parm;
        korg1212->clkRate = rate;

 udelay(INTERCOMMAND_DELAY);
 rc = snd_korg1212_Send1212Command(korg1212, K1212_DB_SetClockSourceRate,
       ClockSourceSelector[korg1212->clkSrcRate],
       0, 0, 0);
 if (rc)
  K1212_DEBUG_PRINTK("K1212_DEBUG: Set Clock Source Selector - RC = %d [%s]\n",
       rc, stateName[korg1212->cardState]);

        return 0;
}
