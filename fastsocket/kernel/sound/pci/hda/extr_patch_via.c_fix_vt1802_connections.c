
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int ARRAY_SIZE (int*) ;
 int snd_hda_override_conn_list (struct hda_codec*,int,int ,int*) ;

__attribute__((used)) static void fix_vt1802_connections(struct hda_codec *codec)
{
 static hda_nid_t conn_24[] = { 0x14, 0x1c };
 static hda_nid_t conn_33[] = { 0x1c };

 snd_hda_override_conn_list(codec, 0x24, ARRAY_SIZE(conn_24), conn_24);
 snd_hda_override_conn_list(codec, 0x33, ARRAY_SIZE(conn_33), conn_33);
}
