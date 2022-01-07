
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_mixer_oss_file {TYPE_1__* card; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_2__ {int module; } ;


 int kfree (struct snd_mixer_oss_file*) ;
 int module_put (int ) ;
 int snd_card_file_remove (TYPE_1__*,struct file*) ;

__attribute__((used)) static int snd_mixer_oss_release(struct inode *inode, struct file *file)
{
 struct snd_mixer_oss_file *fmixer;

 if (file->private_data) {
  fmixer = (struct snd_mixer_oss_file *) file->private_data;
  module_put(fmixer->card->module);
  snd_card_file_remove(fmixer->card, file);
  kfree(fmixer);
 }
 return 0;
}
