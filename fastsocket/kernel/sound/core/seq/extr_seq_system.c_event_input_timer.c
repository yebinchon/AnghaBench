
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_event {int dummy; } ;


 int snd_seq_control_queue (struct snd_seq_event*,int,int) ;

__attribute__((used)) static int event_input_timer(struct snd_seq_event * ev, int direct, void *private_data, int atomic, int hop)
{
 return snd_seq_control_queue(ev, atomic, hop);
}
