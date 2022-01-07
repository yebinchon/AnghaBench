
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct usb_line6 {TYPE_1__* line6midi; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct TYPE_8__ {struct usb_line6* line6; } ;
struct TYPE_7__ {int state; } ;
struct TYPE_6__ {scalar_t__ num_active_send_urbs; int send_wait; } ;


 int DECLARE_WAITQUEUE (int ,TYPE_2__*) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 TYPE_2__* current ;
 TYPE_3__* line6_rawmidi_substream_midi (struct snd_rawmidi_substream*) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 scalar_t__ signal_pending (TYPE_2__*) ;
 int wait ;

__attribute__((used)) static void line6_midi_output_drain(struct snd_rawmidi_substream *substream)
{
 struct usb_line6 *line6 = line6_rawmidi_substream_midi(substream)->line6;
 wait_queue_head_t *head = &line6->line6midi->send_wait;
 DECLARE_WAITQUEUE(wait, current);
 add_wait_queue(head, &wait);
 current->state = TASK_INTERRUPTIBLE;

 while (line6->line6midi->num_active_send_urbs > 0)
  if (signal_pending(current))
   break;
  else
   schedule();

 current->state = TASK_RUNNING;
 remove_wait_queue(head, &wait);
}
