
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_oss_setup {int task_name; struct snd_pcm_oss_setup* next; } ;
struct snd_pcm {int dummy; } ;
struct TYPE_4__ {TYPE_1__* oss_streams; } ;
struct TYPE_3__ {int setup_mutex; struct snd_pcm_oss_setup* setup_list; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* oss_pcm (struct snd_pcm*) ;
 int strcmp (int ,char const*) ;
 char* strip_task_path (char const*) ;

__attribute__((used)) static void snd_pcm_oss_look_for_setup(struct snd_pcm *pcm, int stream,
          const char *task_name,
          struct snd_pcm_oss_setup *rsetup)
{
 struct snd_pcm_oss_setup *setup;

 mutex_lock(&oss_pcm(pcm)->oss_streams[stream].setup_mutex);
 do {
  for (setup = oss_pcm(pcm)->oss_streams[stream].setup_list; setup;
       setup = setup->next) {
   if (!strcmp(setup->task_name, task_name))
    goto out;
  }
 } while ((task_name = strip_task_path(task_name)) != ((void*)0));
 out:
 if (setup)
  *rsetup = *setup;
 mutex_unlock(&oss_pcm(pcm)->oss_streams[stream].setup_mutex);
}
