
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_seq_port_callback {struct snd_opl3* private_data; int private_free; int event_input; int owner; } ;
struct snd_opl3 {int hardware; TYPE_1__* oss_chset; int seq_client; } ;
typedef int callbacks ;
struct TYPE_3__ {int port; int client; struct snd_opl3* private_data; } ;


 int ENOMEM ;
 int MAX_OPL2_VOICES ;
 int MAX_OPL3_VOICES ;
 int OPL3_HW_MASK ;
 int OPL3_HW_OPL3 ;
 int SNDRV_SEQ_PORT_CAP_WRITE ;
 int SNDRV_SEQ_PORT_TYPE_HARDWARE ;
 int SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC ;
 int SNDRV_SEQ_PORT_TYPE_MIDI_GM ;
 int SNDRV_SEQ_PORT_TYPE_SYNTHESIZER ;
 int THIS_MODULE ;
 int memset (struct snd_seq_port_callback*,int ,int) ;
 TYPE_1__* snd_midi_channel_alloc_set (int) ;
 int snd_midi_channel_free_set (TYPE_1__*) ;
 int snd_opl3_oss_event_input ;
 int snd_opl3_oss_free_port ;
 int snd_seq_event_port_attach (int ,struct snd_seq_port_callback*,int ,int,int,int,char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int snd_opl3_oss_create_port(struct snd_opl3 * opl3)
{
 struct snd_seq_port_callback callbacks;
 char name[32];
 int voices, opl_ver;

 voices = (opl3->hardware < OPL3_HW_OPL3) ?
  MAX_OPL2_VOICES : MAX_OPL3_VOICES;
 opl3->oss_chset = snd_midi_channel_alloc_set(voices);
 if (opl3->oss_chset == ((void*)0))
  return -ENOMEM;
 opl3->oss_chset->private_data = opl3;

 memset(&callbacks, 0, sizeof(callbacks));
 callbacks.owner = THIS_MODULE;
 callbacks.event_input = snd_opl3_oss_event_input;
 callbacks.private_free = snd_opl3_oss_free_port;
 callbacks.private_data = opl3;

 opl_ver = (opl3->hardware & OPL3_HW_MASK) >> 8;
 sprintf(name, "OPL%i OSS Port", opl_ver);

 opl3->oss_chset->client = opl3->seq_client;
 opl3->oss_chset->port = snd_seq_event_port_attach(opl3->seq_client, &callbacks,
         SNDRV_SEQ_PORT_CAP_WRITE,
         SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC |
         SNDRV_SEQ_PORT_TYPE_MIDI_GM |
         SNDRV_SEQ_PORT_TYPE_HARDWARE |
         SNDRV_SEQ_PORT_TYPE_SYNTHESIZER,
         voices, voices,
         name);
 if (opl3->oss_chset->port < 0) {
  int port;
  port = opl3->oss_chset->port;
  snd_midi_channel_free_set(opl3->oss_chset);
  return port;
 }
 return 0;
}
