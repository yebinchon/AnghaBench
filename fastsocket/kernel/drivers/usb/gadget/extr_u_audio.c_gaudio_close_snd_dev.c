
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gaudio_snd_dev {int filp; } ;
struct gaudio {struct gaudio_snd_dev capture; struct gaudio_snd_dev playback; struct gaudio_snd_dev control; } ;
struct TYPE_2__ {int files; } ;


 int IS_ERR (int ) ;
 TYPE_1__* current ;
 int filp_close (int ,int ) ;

__attribute__((used)) static int gaudio_close_snd_dev(struct gaudio *gau)
{
 struct gaudio_snd_dev *snd;


 snd = &gau->control;
 if (!IS_ERR(snd->filp))
  filp_close(snd->filp, current->files);


 snd = &gau->playback;
 if (!IS_ERR(snd->filp))
  filp_close(snd->filp, current->files);


 snd = &gau->capture;
 if (!IS_ERR(snd->filp))
  filp_close(snd->filp, current->files);

 return 0;
}
