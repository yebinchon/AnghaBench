
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_wm87x6 {unsigned int* wm8766_regs; int hp_jack; } ;
struct oxygen {int mutex; struct xonar_wm87x6* model_data; } ;


 int GPIO_DS_HP_DETECT ;
 int GPIO_DS_OUTPUT_FRONTLR ;
 int OXYGEN_GPIO_DATA ;
 int SND_JACK_HEADPHONE ;
 size_t WM8766_DAC_CTRL ;
 unsigned int WM8766_MUTEALL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_read16 (struct oxygen*,int ) ;
 int oxygen_write16_masked (struct oxygen*,int ,int ,int ) ;
 int snd_jack_report (int ,int ) ;
 int wm8766_write_cached (struct oxygen*,size_t,unsigned int) ;

__attribute__((used)) static void xonar_ds_handle_hp_jack(struct oxygen *chip)
{
 struct xonar_wm87x6 *data = chip->model_data;
 bool hp_plugged;
 unsigned int reg;

 mutex_lock(&chip->mutex);

 hp_plugged = !(oxygen_read16(chip, OXYGEN_GPIO_DATA) &
         GPIO_DS_HP_DETECT);

 oxygen_write16_masked(chip, OXYGEN_GPIO_DATA,
         hp_plugged ? 0 : GPIO_DS_OUTPUT_FRONTLR,
         GPIO_DS_OUTPUT_FRONTLR);

 reg = data->wm8766_regs[WM8766_DAC_CTRL] & ~WM8766_MUTEALL;
 if (hp_plugged)
  reg |= WM8766_MUTEALL;
 wm8766_write_cached(chip, WM8766_DAC_CTRL, reg);

 snd_jack_report(data->hp_jack, hp_plugged ? SND_JACK_HEADPHONE : 0);

 mutex_unlock(&chip->mutex);
}
