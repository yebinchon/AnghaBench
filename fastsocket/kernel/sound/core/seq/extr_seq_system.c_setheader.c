
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int client; int port; } ;
struct TYPE_8__ {TYPE_3__ addr; } ;
struct TYPE_6__ {int client; } ;
struct TYPE_5__ {scalar_t__ port; int client; } ;
struct snd_seq_event {TYPE_4__ data; TYPE_2__ dest; TYPE_1__ source; int flags; } ;


 int ENODEV ;
 int SNDRV_SEQ_ADDRESS_SUBSCRIBERS ;
 int SNDRV_SEQ_EVENT_LENGTH_FIXED ;
 int SNDRV_SEQ_EVENT_LENGTH_MASK ;
 scalar_t__ announce_port ;
 int memset (struct snd_seq_event*,int ,int) ;
 int sysclient ;

__attribute__((used)) static int setheader(struct snd_seq_event * ev, int client, int port)
{
 if (announce_port < 0)
  return -ENODEV;

 memset(ev, 0, sizeof(struct snd_seq_event));

 ev->flags &= ~SNDRV_SEQ_EVENT_LENGTH_MASK;
 ev->flags |= SNDRV_SEQ_EVENT_LENGTH_FIXED;

 ev->source.client = sysclient;
 ev->source.port = announce_port;
 ev->dest.client = SNDRV_SEQ_ADDRESS_SUBSCRIBERS;



 ev->data.addr.client = client;
 ev->data.addr.port = port;

 return 0;
}
