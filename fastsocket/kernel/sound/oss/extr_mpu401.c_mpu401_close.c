
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpu_config {scalar_t__ opened; int * inputintr; scalar_t__ mode; scalar_t__ uart_mode; } ;
struct coproc_operations {int owner; int devc; int (* close ) (int ,int ) ;} ;
struct TYPE_2__ {struct coproc_operations* coproc; } ;


 int COPR_MIDI ;
 struct mpu_config* dev_conf ;
 TYPE_1__** midi_devs ;
 int module_put (int ) ;
 int reset_mpu401 (struct mpu_config*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void mpu401_close(int dev)
{
 struct mpu_config *devc;
 struct coproc_operations *coprocessor;

 devc = &dev_conf[dev];
 if (devc->uart_mode)
  reset_mpu401(devc);


 devc->mode = 0;
 devc->inputintr = ((void*)0);

 coprocessor = midi_devs[dev]->coproc;
 if (coprocessor) {
  coprocessor->close(coprocessor->devc, COPR_MIDI);
  module_put(coprocessor->owner);
 }
 devc->opened = 0;
}
