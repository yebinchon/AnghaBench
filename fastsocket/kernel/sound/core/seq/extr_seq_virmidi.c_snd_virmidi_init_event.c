
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_virmidi {int seq_mode; int port; int client; } ;
struct TYPE_4__ {int port; int client; } ;
struct TYPE_3__ {int port; } ;
struct snd_seq_event {int type; TYPE_2__ dest; TYPE_1__ source; } ;


 int SNDRV_SEQ_ADDRESS_SUBSCRIBERS ;
 int SNDRV_SEQ_EVENT_NONE ;


 int memset (struct snd_seq_event*,int ,int) ;

__attribute__((used)) static void snd_virmidi_init_event(struct snd_virmidi *vmidi,
       struct snd_seq_event *ev)
{
 memset(ev, 0, sizeof(*ev));
 ev->source.port = vmidi->port;
 switch (vmidi->seq_mode) {
 case 128:
  ev->dest.client = SNDRV_SEQ_ADDRESS_SUBSCRIBERS;
  break;
 case 129:

  ev->dest.client = vmidi->client;
  ev->dest.port = vmidi->port;
  break;
 }
 ev->type = SNDRV_SEQ_EVENT_NONE;
}
