
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef unsigned int hda_nid_t ;


 int AC_PAR_NODE_COUNT ;
 unsigned int snd_hda_param_read (struct hda_codec*,unsigned int,int ) ;

int snd_hda_get_sub_nodes(struct hda_codec *codec, hda_nid_t nid,
     hda_nid_t *start_id)
{
 unsigned int parm;

 parm = snd_hda_param_read(codec, nid, AC_PAR_NODE_COUNT);
 if (parm == -1)
  return 0;
 *start_id = (parm >> 16) & 0x7fff;
 return (int)(parm & 0x7fff);
}
