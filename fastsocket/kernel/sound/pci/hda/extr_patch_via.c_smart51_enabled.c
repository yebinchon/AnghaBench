
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ext_channel_count; } ;
struct via_spec {TYPE_1__ gen; } ;
struct hda_codec {struct via_spec* spec; } ;



__attribute__((used)) static bool smart51_enabled(struct hda_codec *codec)
{
 struct via_spec *spec = codec->spec;
 return spec->gen.ext_channel_count > 2;
}
