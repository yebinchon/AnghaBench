
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int fasync; } ;
struct snd_pcm_file {struct snd_pcm_substream* substream; } ;
struct file {struct snd_pcm_file* private_data; } ;


 int ENXIO ;
 scalar_t__ PCM_RUNTIME_CHECK (struct snd_pcm_substream*) ;
 int fasync_helper (int,struct file*,int,int *) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int snd_pcm_fasync(int fd, struct file * file, int on)
{
 struct snd_pcm_file * pcm_file;
 struct snd_pcm_substream *substream;
 struct snd_pcm_runtime *runtime;
 int err = -ENXIO;

 lock_kernel();
 pcm_file = file->private_data;
 substream = pcm_file->substream;
 if (PCM_RUNTIME_CHECK(substream))
  goto out;
 runtime = substream->runtime;
 err = fasync_helper(fd, file, on, &runtime->fasync);
out:
 unlock_kernel();
 return err;
}
