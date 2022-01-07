
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux {int client; int register_mutex; scalar_t__ voices; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_emux_terminate_all (struct snd_emux*) ;
 int snd_seq_delete_kernel_client (int) ;

void
snd_emux_detach_seq(struct snd_emux *emu)
{
 if (emu->voices)
  snd_emux_terminate_all(emu);

 mutex_lock(&emu->register_mutex);
 if (emu->client >= 0) {
  snd_seq_delete_kernel_client(emu->client);
  emu->client = -1;
 }
 mutex_unlock(&emu->register_mutex);
}
