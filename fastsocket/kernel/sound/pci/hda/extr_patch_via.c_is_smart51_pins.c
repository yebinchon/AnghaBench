
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int multi_ios; TYPE_1__* multi_io; } ;
struct via_spec {TYPE_2__ gen; } ;
struct hda_codec {struct via_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;
struct TYPE_3__ {scalar_t__ pin; } ;



__attribute__((used)) static bool is_smart51_pins(struct hda_codec *codec, hda_nid_t pin)
{
 struct via_spec *spec = codec->spec;
 int i;

 for (i = 0; i < spec->gen.multi_ios; i++)
  if (spec->gen.multi_io[i].pin == pin)
   return 1;
 return 0;
}
