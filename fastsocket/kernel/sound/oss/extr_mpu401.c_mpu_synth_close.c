
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mpu_config {scalar_t__ mode; scalar_t__ opened; int * inputintr; } ;
struct coproc_operations {int owner; int devc; int (* close ) (int ,int ) ;} ;
struct TYPE_4__ {struct coproc_operations* coproc; } ;
struct TYPE_3__ {int midi_dev; } ;


 int COPR_MIDI ;
 struct mpu_config* dev_conf ;
 TYPE_2__** midi_devs ;
 int module_put (int ) ;
 int mpu_cmd (int,int,int ) ;
 int stub1 (int ,int ) ;
 TYPE_1__** synth_devs ;

__attribute__((used)) static void mpu_synth_close(int dev)
{
 int midi_dev;
 struct mpu_config *devc;
 struct coproc_operations *coprocessor;

 midi_dev = synth_devs[dev]->midi_dev;

 devc = &dev_conf[midi_dev];
 mpu_cmd(midi_dev, 0x15, 0);
 mpu_cmd(midi_dev, 0x8a, 0);

 devc->inputintr = ((void*)0);

 coprocessor = midi_devs[midi_dev]->coproc;
 if (coprocessor) {
  coprocessor->close(coprocessor->devc, COPR_MIDI);
  module_put(coprocessor->owner);
 }
 devc->opened = 0;
 devc->mode = 0;
}
