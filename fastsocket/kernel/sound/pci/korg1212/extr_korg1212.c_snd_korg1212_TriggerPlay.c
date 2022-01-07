
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {size_t cardState; int playcnt; } ;


 int K1212_CMDRET_Success ;
 int K1212_DB_TriggerPlay ;
 int K1212_DEBUG_PRINTK (char*,int,int) ;
 int K1212_STATE_PLAYING ;
 int snd_korg1212_Send1212Command (struct snd_korg1212*,int ,int ,int ,int ,int ) ;
 int snd_korg1212_setCardState (struct snd_korg1212*,int ) ;
 int* stateName ;

__attribute__((used)) static int snd_korg1212_TriggerPlay(struct snd_korg1212 * korg1212)
{
 int rc;

 K1212_DEBUG_PRINTK("K1212_DEBUG: TriggerPlay [%s] %d\n",
      stateName[korg1212->cardState], korg1212->playcnt);

        if (korg1212->playcnt++)
  return 0;

        snd_korg1212_setCardState(korg1212, K1212_STATE_PLAYING);
        rc = snd_korg1212_Send1212Command(korg1212, K1212_DB_TriggerPlay, 0, 0, 0, 0);
 if (rc)
  K1212_DEBUG_PRINTK("K1212_DEBUG: TriggerPlay - RC = %d [%s]\n",
       rc, stateName[korg1212->cardState]);
        if (rc != K1212_CMDRET_Success) {
                return 1;
        }
        return 0;
}
