
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int client; int port; } ;
struct TYPE_3__ {int port; int client; } ;
struct snd_seq_event {TYPE_2__ dest; TYPE_1__ source; int flags; } ;


 int SNDRV_SEQ_EVENT_LENGTH_FIXED ;
 int announce_port ;
 int snd_seq_kernel_client_dispatch (int ,struct snd_seq_event*,int ,int ) ;
 int sysclient ;

int snd_seq_system_notify(int client, int port, struct snd_seq_event *ev)
{
 ev->flags = SNDRV_SEQ_EVENT_LENGTH_FIXED;
 ev->source.client = sysclient;
 ev->source.port = announce_port;
 ev->dest.client = client;
 ev->dest.port = port;
 return snd_seq_kernel_client_dispatch(sysclient, ev, 0, 0);
}
