
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rawmidi_runtime {int sleep; } ;
struct snd_rawmidi_file {TYPE_1__* output; TYPE_1__* input; } ;
struct file {struct snd_rawmidi_file* private_data; } ;
typedef int poll_table ;
struct TYPE_3__ {struct snd_rawmidi_runtime* runtime; } ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int snd_rawmidi_input_trigger (TYPE_1__*,int) ;
 scalar_t__ snd_rawmidi_ready (TYPE_1__*) ;

__attribute__((used)) static unsigned int snd_rawmidi_poll(struct file *file, poll_table * wait)
{
 struct snd_rawmidi_file *rfile;
 struct snd_rawmidi_runtime *runtime;
 unsigned int mask;

 rfile = file->private_data;
 if (rfile->input != ((void*)0)) {
  runtime = rfile->input->runtime;
  snd_rawmidi_input_trigger(rfile->input, 1);
  poll_wait(file, &runtime->sleep, wait);
 }
 if (rfile->output != ((void*)0)) {
  runtime = rfile->output->runtime;
  poll_wait(file, &runtime->sleep, wait);
 }
 mask = 0;
 if (rfile->input != ((void*)0)) {
  if (snd_rawmidi_ready(rfile->input))
   mask |= POLLIN | POLLRDNORM;
 }
 if (rfile->output != ((void*)0)) {
  if (snd_rawmidi_ready(rfile->output))
   mask |= POLLOUT | POLLWRNORM;
 }
 return mask;
}
