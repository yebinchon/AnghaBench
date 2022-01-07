
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int running; int control_register; } ;






 int RME9652_SyncPref_ADAT1 ;
 int RME9652_SyncPref_ADAT2 ;
 int RME9652_SyncPref_ADAT3 ;
 int RME9652_SyncPref_Mask ;
 int RME9652_SyncPref_SPDIF ;
 int RME9652_control_register ;
 int rme9652_start (struct snd_rme9652*) ;
 int rme9652_stop (struct snd_rme9652*) ;
 int rme9652_write (struct snd_rme9652*,int ,int ) ;

__attribute__((used)) static int rme9652_set_sync_pref(struct snd_rme9652 *rme9652, int pref)
{
 int restart;

 rme9652->control_register &= ~RME9652_SyncPref_Mask;
 switch (pref) {
 case 131:
  rme9652->control_register |= RME9652_SyncPref_ADAT1;
  break;
 case 130:
  rme9652->control_register |= RME9652_SyncPref_ADAT2;
  break;
 case 129:
  rme9652->control_register |= RME9652_SyncPref_ADAT3;
  break;
 case 128:
  rme9652->control_register |= RME9652_SyncPref_SPDIF;
  break;
 }

 if ((restart = rme9652->running)) {
  rme9652_stop(rme9652);
 }

 rme9652_write(rme9652, RME9652_control_register, rme9652->control_register);

 if (restart) {
  rme9652_start(rme9652);
 }

 return 0;
}
