
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int value; } ;
struct TYPE_9__ {TYPE_3__ param; int queue; } ;
struct TYPE_10__ {TYPE_4__ queue; } ;
struct TYPE_7__ {int port; int client; } ;
struct TYPE_6__ {scalar_t__ port; int client; } ;
struct snd_seq_event {int type; TYPE_5__ data; int queue; TYPE_2__ dest; TYPE_1__ source; } ;
struct seq_oss_devinfo {int cseq; int queue; } ;
typedef int ev ;


 int SNDRV_SEQ_CLIENT_SYSTEM ;
 int SNDRV_SEQ_PORT_SYSTEM_TIMER ;
 int memset (struct snd_seq_event*,int ,int) ;
 int snd_seq_kernel_client_dispatch (int ,struct snd_seq_event*,int,int ) ;

__attribute__((used)) static int
send_timer_event(struct seq_oss_devinfo *dp, int type, int value)
{
 struct snd_seq_event ev;

 memset(&ev, 0, sizeof(ev));
 ev.type = type;
 ev.source.client = dp->cseq;
 ev.source.port = 0;
 ev.dest.client = SNDRV_SEQ_CLIENT_SYSTEM;
 ev.dest.port = SNDRV_SEQ_PORT_SYSTEM_TIMER;
 ev.queue = dp->queue;
 ev.data.queue.queue = dp->queue;
 ev.data.queue.param.value = value;
 return snd_seq_kernel_client_dispatch(dp->cseq, &ev, 1, 0);
}
