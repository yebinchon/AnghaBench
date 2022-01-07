
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_event {int type; } ;


 scalar_t__ setheader (struct snd_seq_event*,int,int) ;
 int snd_seq_kernel_client_dispatch (int ,struct snd_seq_event*,int ,int ) ;
 int sysclient ;

void snd_seq_system_broadcast(int client, int port, int type)
{
 struct snd_seq_event ev;

 if (setheader(&ev, client, port) < 0)
  return;
 ev.type = type;
 snd_seq_kernel_client_dispatch(sysclient, &ev, 0, 0);
}
