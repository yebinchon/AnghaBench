
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_2__* pstr; int name; int stream; int number; struct snd_rawmidi* rmidi; } ;
struct snd_rawmidi_info {scalar_t__ subdevices_avail; scalar_t__ subdevices_count; int subname; int name; int id; int flags; int stream; int subdevice; int device; int card; } ;
struct snd_rawmidi {int name; int id; int info_flags; int device; TYPE_1__* card; } ;
struct TYPE_4__ {scalar_t__ substream_opened; scalar_t__ substream_count; } ;
struct TYPE_3__ {int number; } ;


 int ENODEV ;
 int memset (struct snd_rawmidi_info*,int ,int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_rawmidi_info(struct snd_rawmidi_substream *substream,
       struct snd_rawmidi_info *info)
{
 struct snd_rawmidi *rmidi;

 if (substream == ((void*)0))
  return -ENODEV;
 rmidi = substream->rmidi;
 memset(info, 0, sizeof(*info));
 info->card = rmidi->card->number;
 info->device = rmidi->device;
 info->subdevice = substream->number;
 info->stream = substream->stream;
 info->flags = rmidi->info_flags;
 strcpy(info->id, rmidi->id);
 strcpy(info->name, rmidi->name);
 strcpy(info->subname, substream->name);
 info->subdevices_count = substream->pstr->substream_count;
 info->subdevices_avail = (substream->pstr->substream_count -
      substream->pstr->substream_opened);
 return 0;
}
