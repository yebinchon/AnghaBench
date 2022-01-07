
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int dspio_set_param (struct hda_codec*,int,int,unsigned int*,int) ;

__attribute__((used)) static int dspio_set_uint_param(struct hda_codec *codec, int mod_id,
   int req, unsigned int data)
{
 return dspio_set_param(codec, mod_id, req, &data, sizeof(unsigned int));
}
