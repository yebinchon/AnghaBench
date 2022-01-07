
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auto_pin_cfg {size_t num_inputs; TYPE_1__* inputs; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {int type; int pin; } ;


 size_t AUTO_CFG_MAX_INS ;

__attribute__((used)) static void add_auto_cfg_input_pin(struct auto_pin_cfg *cfg, hda_nid_t nid,
       int type)
{
 if (cfg->num_inputs < AUTO_CFG_MAX_INS) {
  cfg->inputs[cfg->num_inputs].pin = nid;
  cfg->inputs[cfg->num_inputs].type = type;
  cfg->num_inputs++;
 }
}
