
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_card {TYPE_3__* private_data; } ;
typedef int snd_wavefront_midi_t ;
struct TYPE_5__ {int midi; } ;
struct TYPE_6__ {TYPE_2__ wavefront; } ;
typedef TYPE_3__ snd_wavefront_card_t ;
struct TYPE_4__ {struct snd_card* card; } ;



__attribute__((used)) static snd_wavefront_midi_t *
get_wavefront_midi (struct snd_rawmidi_substream *substream)

{
 struct snd_card *card;
 snd_wavefront_card_t *acard;

 if (substream == ((void*)0) || substream->rmidi == ((void*)0))
         return ((void*)0);

 card = substream->rmidi->card;

 if (card == ((void*)0))
         return ((void*)0);

 if (card->private_data == ((void*)0))
          return ((void*)0);

 acard = card->private_data;

 return &acard->wavefront.midi;
}
