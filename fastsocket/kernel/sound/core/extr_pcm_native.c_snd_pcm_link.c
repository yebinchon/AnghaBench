
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_3__* group; int link_list; TYPE_2__* runtime; } ;
struct snd_pcm_group {int dummy; } ;
struct snd_pcm_file {struct snd_pcm_substream* substream; } ;
struct file {struct snd_pcm_file* private_data; } ;
struct TYPE_6__ {int count; int substreams; int lock; } ;
struct TYPE_5__ {TYPE_1__* status; } ;
struct TYPE_4__ {scalar_t__ state; } ;


 int EALREADY ;
 int EBADFD ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ SNDRV_PCM_STATE_OPEN ;
 int down_write (int *) ;
 int fput (struct file*) ;
 TYPE_3__* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct file* snd_pcm_file_fd (int) ;
 int snd_pcm_link_rwlock ;
 int snd_pcm_link_rwsem ;
 scalar_t__ snd_pcm_stream_linked (struct snd_pcm_substream*) ;
 int spin_lock_init (int *) ;
 int up_write (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static int snd_pcm_link(struct snd_pcm_substream *substream, int fd)
{
 int res = 0;
 struct file *file;
 struct snd_pcm_file *pcm_file;
 struct snd_pcm_substream *substream1;

 file = snd_pcm_file_fd(fd);
 if (!file)
  return -EBADFD;
 pcm_file = file->private_data;
 substream1 = pcm_file->substream;
 down_write(&snd_pcm_link_rwsem);
 write_lock_irq(&snd_pcm_link_rwlock);
 if (substream->runtime->status->state == SNDRV_PCM_STATE_OPEN ||
     substream->runtime->status->state != substream1->runtime->status->state) {
  res = -EBADFD;
  goto _end;
 }
 if (snd_pcm_stream_linked(substream1)) {
  res = -EALREADY;
  goto _end;
 }
 if (!snd_pcm_stream_linked(substream)) {
  substream->group = kmalloc(sizeof(struct snd_pcm_group), GFP_ATOMIC);
  if (substream->group == ((void*)0)) {
   res = -ENOMEM;
   goto _end;
  }
  spin_lock_init(&substream->group->lock);
  INIT_LIST_HEAD(&substream->group->substreams);
  list_add_tail(&substream->link_list, &substream->group->substreams);
  substream->group->count = 1;
 }
 list_add_tail(&substream1->link_list, &substream->group->substreams);
 substream->group->count++;
 substream1->group = substream->group;
 _end:
 write_unlock_irq(&snd_pcm_link_rwlock);
 up_write(&snd_pcm_link_rwsem);
 fput(file);
 return res;
}
