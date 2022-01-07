
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct file {int dummy; } ;
struct coproc_operations {int owner; int devc; int (* close ) (int ,int ) ;} ;
struct TYPE_8__ {TYPE_3__* d; struct coproc_operations* coproc; TYPE_2__* dmap_in; TYPE_1__* dmap_out; } ;
struct TYPE_7__ {int owner; } ;
struct TYPE_6__ {int closing; } ;
struct TYPE_5__ {int closing; } ;


 int COPR_PCM ;
 int DMAbuf_release (int,int) ;
 int OPEN_WRITE ;
 TYPE_4__** audio_devs ;
 int module_put (int ) ;
 int stub1 (int ,int ) ;
 int sync_output (int) ;
 int translate_mode (struct file*) ;

void audio_release(int dev, struct file *file)
{
 const struct coproc_operations *coprocessor;
 int mode = translate_mode(file);

 dev = dev >> 4;







 audio_devs[dev]->dmap_out->closing = 1;
 audio_devs[dev]->dmap_in->closing = 1;





 if (mode & OPEN_WRITE)
  sync_output(dev);

 if ( (coprocessor = audio_devs[dev]->coproc) != ((void*)0) ) {
  coprocessor->close(coprocessor->devc, COPR_PCM);
  module_put(coprocessor->owner);
 }
 DMAbuf_release(dev, mode);

 module_put(audio_devs[dev]->d->owner);
}
