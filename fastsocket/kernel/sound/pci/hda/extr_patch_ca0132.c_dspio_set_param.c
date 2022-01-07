
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int SCP_SET ;
 int dspio_scp (struct hda_codec*,int,int,int ,void*,unsigned int,int *,int *) ;

__attribute__((used)) static int dspio_set_param(struct hda_codec *codec, int mod_id,
   int req, void *data, unsigned int len)
{
 return dspio_scp(codec, mod_id, req, SCP_SET, data, len, ((void*)0), ((void*)0));
}
