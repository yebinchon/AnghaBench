
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 scalar_t__ codec_exec_verb (struct hda_codec*,unsigned int,int,unsigned int*) ;
 unsigned int make_codec_cmd (struct hda_codec*,int ,int,unsigned int,unsigned int) ;

unsigned int snd_hda_codec_read(struct hda_codec *codec, hda_nid_t nid,
    int flags,
    unsigned int verb, unsigned int parm)
{
 unsigned cmd = make_codec_cmd(codec, nid, flags, verb, parm);
 unsigned int res;
 if (codec_exec_verb(codec, cmd, flags, &res))
  return -1;
 return res;
}
