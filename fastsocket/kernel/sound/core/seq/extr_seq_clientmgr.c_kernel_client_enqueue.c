
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int client; } ;
struct snd_seq_event {scalar_t__ type; TYPE_1__ source; } ;
struct snd_seq_client {int accept_output; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ SNDRV_SEQ_EVENT_KERNEL_ERROR ;
 scalar_t__ SNDRV_SEQ_EVENT_NONE ;
 scalar_t__ check_event_type_and_length (struct snd_seq_event*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_seq_client_enqueue_event (struct snd_seq_client*,struct snd_seq_event*,struct file*,int,int,int) ;
 int snd_seq_client_unlock (struct snd_seq_client*) ;
 struct snd_seq_client* snd_seq_client_use_ptr (int) ;

__attribute__((used)) static int kernel_client_enqueue(int client, struct snd_seq_event *ev,
     struct file *file, int blocking,
     int atomic, int hop)
{
 struct snd_seq_client *cptr;
 int result;

 if (snd_BUG_ON(!ev))
  return -EINVAL;

 if (ev->type == SNDRV_SEQ_EVENT_NONE)
  return 0;
 if (ev->type == SNDRV_SEQ_EVENT_KERNEL_ERROR)
  return -EINVAL;


 ev->source.client = client;

 if (check_event_type_and_length(ev))
  return -EINVAL;

 cptr = snd_seq_client_use_ptr(client);
 if (cptr == ((void*)0))
  return -EINVAL;

 if (! cptr->accept_output)
  result = -EPERM;
 else
  result = snd_seq_client_enqueue_event(cptr, ev, file, blocking, atomic, hop);

 snd_seq_client_unlock(cptr);
 return result;
}
