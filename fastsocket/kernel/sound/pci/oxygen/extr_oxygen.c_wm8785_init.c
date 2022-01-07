
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int card; struct generic_data* model_data; } ;
struct generic_data {int* wm8785_regs; } ;


 int WM8785_FORMAT_LJUST ;
 int WM8785_HPFL ;
 int WM8785_HPFR ;
 int WM8785_MCR_SLAVE ;
 int WM8785_OSR_SINGLE ;
 int snd_component_add (int ,char*) ;
 int wm8785_registers_init (struct oxygen*) ;

__attribute__((used)) static void wm8785_init(struct oxygen *chip)
{
 struct generic_data *data = chip->model_data;

 data->wm8785_regs[0] =
  WM8785_MCR_SLAVE | WM8785_OSR_SINGLE | WM8785_FORMAT_LJUST;
 data->wm8785_regs[2] = WM8785_HPFR | WM8785_HPFL;
 wm8785_registers_init(chip);
 snd_component_add(chip->card, "WM8785");
}
