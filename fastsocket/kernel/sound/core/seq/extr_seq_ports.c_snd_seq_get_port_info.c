
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_seq_port_info {int time_queue; int flags; int write_use; int read_use; int synth_voices; int midi_voices; int midi_channels; int type; int capability; int name; } ;
struct TYPE_4__ {int count; } ;
struct TYPE_3__ {int count; } ;
struct snd_seq_client_port {int time_queue; scalar_t__ time_real; scalar_t__ timestamping; TYPE_2__ c_dest; TYPE_1__ c_src; int synth_voices; int midi_voices; int midi_channels; int type; int capability; int name; } ;


 int EINVAL ;
 int SNDRV_SEQ_PORT_FLG_TIMESTAMP ;
 int SNDRV_SEQ_PORT_FLG_TIME_REAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int strlcpy (int ,int ,int) ;

int snd_seq_get_port_info(struct snd_seq_client_port * port,
     struct snd_seq_port_info * info)
{
 if (snd_BUG_ON(!port || !info))
  return -EINVAL;


 strlcpy(info->name, port->name, sizeof(info->name));


 info->capability = port->capability;


 info->type = port->type;


 info->midi_channels = port->midi_channels;
 info->midi_voices = port->midi_voices;
 info->synth_voices = port->synth_voices;


 info->read_use = port->c_src.count;
 info->write_use = port->c_dest.count;


 info->flags = 0;
 if (port->timestamping) {
  info->flags |= SNDRV_SEQ_PORT_FLG_TIMESTAMP;
  if (port->time_real)
   info->flags |= SNDRV_SEQ_PORT_FLG_TIME_REAL;
  info->time_queue = port->time_queue;
 }

 return 0;
}
