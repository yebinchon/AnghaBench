
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_seq_port_subscribe {int dummy; } ;
struct TYPE_7__ {int channel; int param; } ;
struct TYPE_8__ {TYPE_3__ control; } ;
struct TYPE_6__ {int client; } ;
struct TYPE_5__ {int port; } ;
struct snd_seq_event {TYPE_4__ data; int type; TYPE_2__ dest; TYPE_1__ source; } ;
struct snd_seq_dummy_port {int client; int port; int connect; scalar_t__ duplex; } ;
typedef int ev ;


 int MIDI_CTL_ALL_SOUNDS_OFF ;
 int MIDI_CTL_RESET_CONTROLLERS ;
 int SNDRV_SEQ_ADDRESS_SUBSCRIBERS ;
 int SNDRV_SEQ_EVENT_CONTROLLER ;
 int memset (struct snd_seq_event*,int ,int) ;
 int snd_seq_kernel_client_dispatch (int ,struct snd_seq_event*,int ,int ) ;

__attribute__((used)) static int
dummy_unuse(void *private_data, struct snd_seq_port_subscribe *info)
{
 struct snd_seq_dummy_port *p;
 int i;
 struct snd_seq_event ev;

 p = private_data;
 memset(&ev, 0, sizeof(ev));
 if (p->duplex)
  ev.source.port = p->connect;
 else
  ev.source.port = p->port;
 ev.dest.client = SNDRV_SEQ_ADDRESS_SUBSCRIBERS;
 ev.type = SNDRV_SEQ_EVENT_CONTROLLER;
 for (i = 0; i < 16; i++) {
  ev.data.control.channel = i;
  ev.data.control.param = MIDI_CTL_ALL_SOUNDS_OFF;
  snd_seq_kernel_client_dispatch(p->client, &ev, 0, 0);
  ev.data.control.param = MIDI_CTL_RESET_CONTROLLERS;
  snd_seq_kernel_client_dispatch(p->client, &ev, 0, 0);
 }
 return 0;
}
