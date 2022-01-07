
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
struct TYPE_4__ {TYPE_1__ ext; } ;
struct snd_seq_event {int flags; TYPE_2__ data; } ;


 int EINVAL ;
 int SNDRV_SEQ_EVENT_LENGTH_MASK ;
 int SNDRV_SEQ_EVENT_LENGTH_VARIABLE ;
 int SNDRV_SEQ_EXT_MASK ;

__attribute__((used)) static int get_var_len(const struct snd_seq_event *event)
{
 if ((event->flags & SNDRV_SEQ_EVENT_LENGTH_MASK) != SNDRV_SEQ_EVENT_LENGTH_VARIABLE)
  return -EINVAL;

 return event->data.ext.len & ~SNDRV_SEQ_EXT_MASK;
}
