
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_virmidi_dev {int client; int device; int port; TYPE_3__* card; TYPE_1__* rmidi; } ;
struct TYPE_5__ {int client; int port; } ;
struct snd_seq_port_info {int capability; int type; int midi_channels; TYPE_2__ addr; struct snd_seq_port_callback* kernel; int name; } ;
struct snd_seq_port_callback {int event_input; int unuse; int use; int unsubscribe; int subscribe; struct snd_virmidi_dev* private_data; int owner; } ;
typedef int pcallbacks ;
struct TYPE_6__ {int number; } ;
struct TYPE_4__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_SEQ_IOCTL_CREATE_PORT ;
 int SNDRV_SEQ_PORT_CAP_DUPLEX ;
 int SNDRV_SEQ_PORT_CAP_READ ;
 int SNDRV_SEQ_PORT_CAP_SUBS_READ ;
 int SNDRV_SEQ_PORT_CAP_SUBS_WRITE ;
 int SNDRV_SEQ_PORT_CAP_SYNC_READ ;
 int SNDRV_SEQ_PORT_CAP_SYNC_WRITE ;
 int SNDRV_SEQ_PORT_CAP_WRITE ;
 int SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC ;
 int SNDRV_SEQ_PORT_TYPE_PORT ;
 int SNDRV_SEQ_PORT_TYPE_SOFTWARE ;
 int THIS_MODULE ;
 int kfree (struct snd_seq_port_info*) ;
 struct snd_seq_port_info* kzalloc (int,int ) ;
 int memset (struct snd_seq_port_callback*,int ,int) ;
 int snd_seq_create_kernel_client (TYPE_3__*,int,char*,int ,int,int) ;
 int snd_seq_delete_kernel_client (int) ;
 int snd_seq_kernel_client_ctl (int,int ,struct snd_seq_port_info*) ;
 int snd_virmidi_event_input ;
 int snd_virmidi_subscribe ;
 int snd_virmidi_unsubscribe ;
 int snd_virmidi_unuse ;
 int snd_virmidi_use ;
 int sprintf (int ,char*,int,int) ;

__attribute__((used)) static int snd_virmidi_dev_attach_seq(struct snd_virmidi_dev *rdev)
{
 int client;
 struct snd_seq_port_callback pcallbacks;
 struct snd_seq_port_info *pinfo;
 int err;

 if (rdev->client >= 0)
  return 0;

 pinfo = kzalloc(sizeof(*pinfo), GFP_KERNEL);
 if (!pinfo) {
  err = -ENOMEM;
  goto __error;
 }

 client = snd_seq_create_kernel_client(rdev->card, rdev->device,
           "%s %d-%d", rdev->rmidi->name,
           rdev->card->number,
           rdev->device);
 if (client < 0) {
  err = client;
  goto __error;
 }
 rdev->client = client;


 pinfo->addr.client = client;
 sprintf(pinfo->name, "VirMIDI %d-%d", rdev->card->number, rdev->device);

 pinfo->capability |= SNDRV_SEQ_PORT_CAP_WRITE | SNDRV_SEQ_PORT_CAP_SYNC_WRITE | SNDRV_SEQ_PORT_CAP_SUBS_WRITE;
 pinfo->capability |= SNDRV_SEQ_PORT_CAP_READ | SNDRV_SEQ_PORT_CAP_SYNC_READ | SNDRV_SEQ_PORT_CAP_SUBS_READ;
 pinfo->capability |= SNDRV_SEQ_PORT_CAP_DUPLEX;
 pinfo->type = SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC
  | SNDRV_SEQ_PORT_TYPE_SOFTWARE
  | SNDRV_SEQ_PORT_TYPE_PORT;
 pinfo->midi_channels = 16;
 memset(&pcallbacks, 0, sizeof(pcallbacks));
 pcallbacks.owner = THIS_MODULE;
 pcallbacks.private_data = rdev;
 pcallbacks.subscribe = snd_virmidi_subscribe;
 pcallbacks.unsubscribe = snd_virmidi_unsubscribe;
 pcallbacks.use = snd_virmidi_use;
 pcallbacks.unuse = snd_virmidi_unuse;
 pcallbacks.event_input = snd_virmidi_event_input;
 pinfo->kernel = &pcallbacks;
 err = snd_seq_kernel_client_ctl(client, SNDRV_SEQ_IOCTL_CREATE_PORT, pinfo);
 if (err < 0) {
  snd_seq_delete_kernel_client(client);
  rdev->client = -1;
  goto __error;
 }

 rdev->port = pinfo->addr.port;
 err = 0;

 __error:
 kfree(pinfo);
 return err;
}
