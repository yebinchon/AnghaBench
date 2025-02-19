
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xg_on_macro ;
struct snd_midi_op {int (* sysex ) (void*,unsigned char*,int,int,struct snd_midi_channel_set*) ;} ;
struct snd_midi_channel_set {scalar_t__ midi_mode; int max_channels; unsigned char gs_reverb_mode; unsigned char gs_chorus_mode; unsigned char gs_master_volume; TYPE_1__* channels; } ;
typedef int gs_pfx_macro ;
typedef int gm_on_macro ;
struct TYPE_2__ {int drum_channel; unsigned char midi_program; int* control; } ;


 size_t MIDI_CTL_MSB_BANK ;
 scalar_t__ SNDRV_MIDI_MODE_GM ;
 scalar_t__ SNDRV_MIDI_MODE_GS ;
 scalar_t__ SNDRV_MIDI_MODE_XG ;
 int SNDRV_MIDI_SYSEX_GM_ON ;
 int SNDRV_MIDI_SYSEX_GS_CHORUS_MODE ;
 int SNDRV_MIDI_SYSEX_GS_DRUM_CHANNEL ;
 int SNDRV_MIDI_SYSEX_GS_MASTER_VOLUME ;
 int SNDRV_MIDI_SYSEX_GS_RESET ;
 int SNDRV_MIDI_SYSEX_GS_REVERB_MODE ;
 int SNDRV_MIDI_SYSEX_NOT_PARSED ;
 int SNDRV_MIDI_SYSEX_XG_ON ;
 int get_channel (unsigned char) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 int reset_all_channels (struct snd_midi_channel_set*) ;
 int stub1 (void*,unsigned char*,int,int,struct snd_midi_channel_set*) ;

__attribute__((used)) static void
sysex(struct snd_midi_op *ops, void *private, unsigned char *buf, int len,
      struct snd_midi_channel_set *chset)
{

 static unsigned char gm_on_macro[] = {
  0x7e,0x7f,0x09,0x01,
 };

 static unsigned char xg_on_macro[] = {
  0x43,0x10,0x4c,0x00,0x00,0x7e,0x00,
 };






 static unsigned char gs_pfx_macro[] = {
  0x41,0x10,0x42,0x12,0x40,
 };

 int parsed = SNDRV_MIDI_SYSEX_NOT_PARSED;

 if (len <= 0 || buf[0] != 0xf0)
  return;

 buf++;
 len--;


 if (len >= (int)sizeof(gm_on_macro) &&
     memcmp(buf, gm_on_macro, sizeof(gm_on_macro)) == 0) {
  if (chset->midi_mode != SNDRV_MIDI_MODE_GS &&
      chset->midi_mode != SNDRV_MIDI_MODE_XG) {
   chset->midi_mode = SNDRV_MIDI_MODE_GM;
   reset_all_channels(chset);
   parsed = SNDRV_MIDI_SYSEX_GM_ON;
  }
 }


 else if (len >= 8 &&
   memcmp(buf, gs_pfx_macro, sizeof(gs_pfx_macro)) == 0) {
  if (chset->midi_mode != SNDRV_MIDI_MODE_GS &&
      chset->midi_mode != SNDRV_MIDI_MODE_XG)
   chset->midi_mode = SNDRV_MIDI_MODE_GS;

  if (buf[5] == 0x00 && buf[6] == 0x7f && buf[7] == 0x00) {

   parsed = SNDRV_MIDI_SYSEX_GS_RESET;
   reset_all_channels(chset);
  }

  else if ((buf[5] & 0xf0) == 0x10 && buf[6] == 0x15) {

   int p = get_channel(buf[5]);
   if (p < chset->max_channels) {
    parsed = SNDRV_MIDI_SYSEX_GS_DRUM_CHANNEL;
    if (buf[7])
     chset->channels[p].drum_channel = 1;
    else
     chset->channels[p].drum_channel = 0;
   }

  } else if ((buf[5] & 0xf0) == 0x10 && buf[6] == 0x21) {

   int p = get_channel(buf[5]);
   if (p < chset->max_channels &&
       ! chset->channels[p].drum_channel) {
    parsed = SNDRV_MIDI_SYSEX_GS_DRUM_CHANNEL;
    chset->channels[p].midi_program = buf[7];
   }

  } else if (buf[5] == 0x01 && buf[6] == 0x30) {

   parsed = SNDRV_MIDI_SYSEX_GS_REVERB_MODE;
   chset->gs_reverb_mode = buf[7];

  } else if (buf[5] == 0x01 && buf[6] == 0x38) {

   parsed = SNDRV_MIDI_SYSEX_GS_CHORUS_MODE;
   chset->gs_chorus_mode = buf[7];

  } else if (buf[5] == 0x00 && buf[6] == 0x04) {

   parsed = SNDRV_MIDI_SYSEX_GS_MASTER_VOLUME;
   chset->gs_master_volume = buf[7];

  }
 }


 else if (len >= (int)sizeof(xg_on_macro) &&
   memcmp(buf, xg_on_macro, sizeof(xg_on_macro)) == 0) {
  int i;
  chset->midi_mode = SNDRV_MIDI_MODE_XG;
  parsed = SNDRV_MIDI_SYSEX_XG_ON;

  for (i = 0; i < chset->max_channels; i++) {
   if (chset->channels[i].drum_channel)
    chset->channels[i].control[MIDI_CTL_MSB_BANK] = 127;
   else
    chset->channels[i].control[MIDI_CTL_MSB_BANK] = 0;
  }
 }

 if (ops->sysex)
  ops->sysex(private, buf - 1, len + 1, parsed, chset);
}
