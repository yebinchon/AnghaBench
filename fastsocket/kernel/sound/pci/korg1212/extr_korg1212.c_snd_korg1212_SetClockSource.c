
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {int clkSource; int clkRate; } ;


 int EINVAL ;
 int snd_korg1212_SetRate (struct snd_korg1212*,int ) ;

__attribute__((used)) static int snd_korg1212_SetClockSource(struct snd_korg1212 *korg1212, int source)
{

 if (source < 0 || source > 2)
  return -EINVAL;

        korg1212->clkSource = source;

        snd_korg1212_SetRate(korg1212, korg1212->clkRate);

        return 0;
}
