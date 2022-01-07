
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int channel; int param; int value; } ;
struct TYPE_3__ {TYPE_2__ control; } ;
struct snd_seq_event {TYPE_1__ data; } ;
struct snd_midi_event {int* buf; } ;



__attribute__((used)) static void two_param_ctrl_event(struct snd_midi_event *dev, struct snd_seq_event *ev)
{
 ev->data.control.channel = dev->buf[0] & 0x0f;
 ev->data.control.param = dev->buf[1];
 ev->data.control.value = dev->buf[2];
}
