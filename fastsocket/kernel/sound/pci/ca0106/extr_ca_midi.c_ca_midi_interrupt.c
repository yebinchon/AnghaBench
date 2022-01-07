
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca_midi {int tx_enable; int rx_enable; unsigned int ipr_rx; int midi_mode; unsigned int ipr_tx; int output_lock; int (* interrupt_disable ) (struct snd_ca_midi*,int) ;scalar_t__ substream_output; int input_lock; scalar_t__ substream_input; int * rmidi; } ;


 int CA_MIDI_MODE_INPUT ;
 int ca_midi_clear_rx (struct snd_ca_midi*) ;
 scalar_t__ ca_midi_input_avail (struct snd_ca_midi*) ;
 scalar_t__ ca_midi_output_ready (struct snd_ca_midi*) ;
 unsigned char ca_midi_read_data (struct snd_ca_midi*) ;
 int ca_midi_write_data (struct snd_ca_midi*,unsigned char) ;
 int snd_rawmidi_receive (scalar_t__,unsigned char*,int) ;
 int snd_rawmidi_transmit (scalar_t__,unsigned char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct snd_ca_midi*,int) ;
 int stub2 (struct snd_ca_midi*,int) ;

__attribute__((used)) static void ca_midi_interrupt(struct snd_ca_midi *midi, unsigned int status)
{
 unsigned char byte;

 if (midi->rmidi == ((void*)0)) {
  midi->interrupt_disable(midi,midi->tx_enable | midi->rx_enable);
  return;
 }

 spin_lock(&midi->input_lock);
 if ((status & midi->ipr_rx) && ca_midi_input_avail(midi)) {
  if (!(midi->midi_mode & CA_MIDI_MODE_INPUT)) {
   ca_midi_clear_rx(midi);
  } else {
   byte = ca_midi_read_data(midi);
   if(midi->substream_input)
    snd_rawmidi_receive(midi->substream_input, &byte, 1);


  }
 }
 spin_unlock(&midi->input_lock);

 spin_lock(&midi->output_lock);
 if ((status & midi->ipr_tx) && ca_midi_output_ready(midi)) {
  if (midi->substream_output &&
      snd_rawmidi_transmit(midi->substream_output, &byte, 1) == 1) {
   ca_midi_write_data(midi, byte);
  } else {
   midi->interrupt_disable(midi,midi->tx_enable);
  }
 }
 spin_unlock(&midi->output_lock);

}
