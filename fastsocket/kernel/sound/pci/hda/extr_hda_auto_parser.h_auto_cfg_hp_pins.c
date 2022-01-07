
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auto_pin_cfg {scalar_t__ line_out_type; int const* hp_pins; int const* line_out_pins; } ;
typedef int hda_nid_t ;


 scalar_t__ AUTO_PIN_HP_OUT ;

__attribute__((used)) static inline const hda_nid_t *auto_cfg_hp_pins(const struct auto_pin_cfg *cfg)
{
 return (cfg->line_out_type == AUTO_PIN_HP_OUT) ?
        cfg->line_out_pins : cfg->hp_pins;
}
