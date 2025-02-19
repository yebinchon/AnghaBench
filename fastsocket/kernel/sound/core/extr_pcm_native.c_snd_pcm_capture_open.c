
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int SNDRV_DEVICE_TYPE_PCM_CAPTURE ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int iminor (struct inode*) ;
 int nonseekable_open (struct inode*,struct file*) ;
 struct snd_pcm* snd_lookup_minor_data (int ,int ) ;
 int snd_pcm_open (struct file*,struct snd_pcm*,int ) ;

__attribute__((used)) static int snd_pcm_capture_open(struct inode *inode, struct file *file)
{
 struct snd_pcm *pcm;
 int err = nonseekable_open(inode, file);
 if (err < 0)
  return err;
 pcm = snd_lookup_minor_data(iminor(inode),
        SNDRV_DEVICE_TYPE_PCM_CAPTURE);
 return snd_pcm_open(file, pcm, SNDRV_PCM_STREAM_CAPTURE);
}
