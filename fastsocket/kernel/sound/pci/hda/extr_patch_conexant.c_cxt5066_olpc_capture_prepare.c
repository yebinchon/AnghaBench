
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int recording; } ;


 int cxt5066_olpc_select_mic (struct hda_codec*) ;

__attribute__((used)) static void cxt5066_olpc_capture_prepare(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;


 spec->recording = 1;
 cxt5066_olpc_select_mic(codec);
}
