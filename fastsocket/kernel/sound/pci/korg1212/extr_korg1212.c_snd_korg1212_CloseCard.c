
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {size_t cardState; int opencnt; int open_mutex; } ;


 int K1212_CMDRET_Success ;
 int K1212_DB_SelectPlayMode ;
 int K1212_DEBUG_PRINTK (char*,int,int) ;
 int K1212_MODE_StopPlay ;
 size_t K1212_STATE_READY ;
 size_t K1212_STATE_SETUP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_korg1212_Send1212Command (struct snd_korg1212*,int ,int ,int ,int ,int ) ;
 int snd_korg1212_SendStopAndWait (struct snd_korg1212*) ;
 int snd_korg1212_TurnOnIdleMonitor (struct snd_korg1212*) ;
 int snd_korg1212_setCardState (struct snd_korg1212*,size_t) ;
 int* stateName ;

__attribute__((used)) static int snd_korg1212_CloseCard(struct snd_korg1212 * korg1212)
{
 K1212_DEBUG_PRINTK("K1212_DEBUG: CloseCard [%s] %d\n",
      stateName[korg1212->cardState], korg1212->opencnt);

 mutex_lock(&korg1212->open_mutex);
 if (--(korg1212->opencnt)) {
  mutex_unlock(&korg1212->open_mutex);
  return 0;
 }

        if (korg1212->cardState == K1212_STATE_SETUP) {
                int rc = snd_korg1212_Send1212Command(korg1212, K1212_DB_SelectPlayMode,
                                K1212_MODE_StopPlay, 0, 0, 0);
  if (rc)
   K1212_DEBUG_PRINTK("K1212_DEBUG: CloseCard - RC = %d [%s]\n",
        rc, stateName[korg1212->cardState]);
  if (rc != K1212_CMDRET_Success) {
   mutex_unlock(&korg1212->open_mutex);
                        return 0;
  }
        } else if (korg1212->cardState > K1212_STATE_SETUP) {
  snd_korg1212_SendStopAndWait(korg1212);
        }

        if (korg1212->cardState > K1212_STATE_READY) {
  snd_korg1212_TurnOnIdleMonitor(korg1212);
                snd_korg1212_setCardState(korg1212, K1212_STATE_READY);
 }

 mutex_unlock(&korg1212->open_mutex);
        return 0;
}
