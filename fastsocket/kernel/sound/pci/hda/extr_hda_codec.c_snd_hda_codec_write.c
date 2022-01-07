
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {TYPE_1__* bus; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {scalar_t__ sync_write; } ;


 int codec_exec_verb (struct hda_codec*,unsigned int,int,unsigned int*) ;
 unsigned int make_codec_cmd (struct hda_codec*,int ,int,unsigned int,unsigned int) ;

int snd_hda_codec_write(struct hda_codec *codec, hda_nid_t nid, int flags,
   unsigned int verb, unsigned int parm)
{
 unsigned int cmd = make_codec_cmd(codec, nid, flags, verb, parm);
 unsigned int res;
 return codec_exec_verb(codec, cmd, flags,
          codec->bus->sync_write ? &res : ((void*)0));
}
