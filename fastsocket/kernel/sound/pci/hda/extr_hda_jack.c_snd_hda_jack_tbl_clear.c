
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_jack_tbl {scalar_t__ jack; } ;
struct TYPE_4__ {int used; struct hda_jack_tbl* list; } ;
struct hda_codec {TYPE_2__ jacktbl; TYPE_1__* bus; } ;
struct TYPE_3__ {int card; int shutdown; } ;


 int snd_array_free (TYPE_2__*) ;
 int snd_device_free (int ,scalar_t__) ;

void snd_hda_jack_tbl_clear(struct hda_codec *codec)
{
 snd_array_free(&codec->jacktbl);
}
