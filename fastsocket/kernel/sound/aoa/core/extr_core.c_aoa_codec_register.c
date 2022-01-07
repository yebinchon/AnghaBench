
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoa_codec {int list; } ;


 int attach_codec_to_fabric (struct aoa_codec*) ;
 int codec_list ;
 scalar_t__ fabric ;
 int list_add (int *,int *) ;

int aoa_codec_register(struct aoa_codec *codec)
{
 int err = 0;




 if (fabric)
  err = attach_codec_to_fabric(codec);
 if (!err)
  list_add(&codec->list, &codec_list);
 return err;
}
