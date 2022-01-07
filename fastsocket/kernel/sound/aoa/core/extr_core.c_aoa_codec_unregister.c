
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aoa_codec {int owner; int * fabric; int (* exit ) (struct aoa_codec*) ;int list; } ;
struct TYPE_2__ {int (* remove_codec ) (struct aoa_codec*) ;} ;


 TYPE_1__* fabric ;
 int list_del (int *) ;
 int module_put (int ) ;
 int stub1 (struct aoa_codec*) ;
 int stub2 (struct aoa_codec*) ;

void aoa_codec_unregister(struct aoa_codec *codec)
{
 list_del(&codec->list);
 if (codec->fabric && codec->exit)
  codec->exit(codec);
 if (fabric && fabric->remove_codec)
  fabric->remove_codec(codec);
 codec->fabric = ((void*)0);
 module_put(codec->owner);
}
