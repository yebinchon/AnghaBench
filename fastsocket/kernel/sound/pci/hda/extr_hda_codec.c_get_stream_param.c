
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int afg; } ;
typedef int hda_nid_t ;


 int AC_PAR_STREAM ;
 unsigned int snd_hda_param_read (struct hda_codec*,int ,int ) ;

__attribute__((used)) static unsigned int get_stream_param(struct hda_codec *codec, hda_nid_t nid,
         int dir)
{
 unsigned int streams = snd_hda_param_read(codec, nid, AC_PAR_STREAM);
 if (!streams || streams == -1)
  streams = snd_hda_param_read(codec, codec->afg, AC_PAR_STREAM);
 if (!streams || streams == -1)
  return 0;
 return streams;
}
