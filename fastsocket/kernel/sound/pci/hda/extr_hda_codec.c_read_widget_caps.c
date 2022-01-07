
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int num_nodes; int * wcaps; int start_nid; } ;
typedef int hda_nid_t ;


 int AC_PAR_AUDIO_WIDGET_CAP ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmalloc (int,int ) ;
 int snd_hda_get_sub_nodes (struct hda_codec*,int ,int *) ;
 int snd_hda_param_read (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int read_widget_caps(struct hda_codec *codec, hda_nid_t fg_node)
{
 int i;
 hda_nid_t nid;

 codec->num_nodes = snd_hda_get_sub_nodes(codec, fg_node,
       &codec->start_nid);
 codec->wcaps = kmalloc(codec->num_nodes * 4, GFP_KERNEL);
 if (!codec->wcaps)
  return -ENOMEM;
 nid = codec->start_nid;
 for (i = 0; i < codec->num_nodes; i++, nid++)
  codec->wcaps[i] = snd_hda_param_read(codec, nid,
           AC_PAR_AUDIO_WIDGET_CAP);
 return 0;
}
