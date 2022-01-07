
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int client; } ;
struct TYPE_4__ {scalar_t__ client; int port; } ;
struct snd_seq_event {scalar_t__ type; TYPE_1__ dest; TYPE_2__ source; } ;
struct snd_seq_dummy_port {int client; int port; int connect; scalar_t__ duplex; } ;


 int SNDRV_SEQ_ADDRESS_SUBSCRIBERS ;
 scalar_t__ SNDRV_SEQ_CLIENT_SYSTEM ;
 scalar_t__ SNDRV_SEQ_EVENT_KERNEL_ERROR ;
 int snd_seq_kernel_client_dispatch (int ,struct snd_seq_event*,int,int) ;

__attribute__((used)) static int
dummy_input(struct snd_seq_event *ev, int direct, void *private_data,
     int atomic, int hop)
{
 struct snd_seq_dummy_port *p;
 struct snd_seq_event tmpev;

 p = private_data;
 if (ev->source.client == SNDRV_SEQ_CLIENT_SYSTEM ||
     ev->type == SNDRV_SEQ_EVENT_KERNEL_ERROR)
  return 0;
 tmpev = *ev;
 if (p->duplex)
  tmpev.source.port = p->connect;
 else
  tmpev.source.port = p->port;
 tmpev.dest.client = SNDRV_SEQ_ADDRESS_SUBSCRIBERS;
 return snd_seq_kernel_client_dispatch(p->client, &tmpev, atomic, hop);
}
