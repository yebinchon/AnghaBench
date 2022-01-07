
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_event {int dummy; } ;
struct snd_emux_port {int chset; } ;


 int EINVAL ;
 int emux_ops ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_midi_process_event (int *,struct snd_seq_event*,int *) ;

int
snd_emux_event_input(struct snd_seq_event *ev, int direct, void *private_data,
       int atomic, int hop)
{
 struct snd_emux_port *port;

 port = private_data;
 if (snd_BUG_ON(!port || !ev))
  return -EINVAL;

 snd_midi_process_event(&emux_ops, ev, &port->chset);

 return 0;
}
