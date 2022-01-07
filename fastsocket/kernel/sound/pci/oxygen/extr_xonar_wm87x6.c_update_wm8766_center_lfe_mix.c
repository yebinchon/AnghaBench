
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_wm87x6 {unsigned int* wm8766_regs; } ;
struct oxygen {struct xonar_wm87x6* model_data; } ;


 size_t WM8766_DAC_CTRL ;
 unsigned int WM8766_PL_LEFT_LEFT ;
 unsigned int WM8766_PL_LEFT_LRMIX ;
 unsigned int WM8766_PL_LEFT_MASK ;
 unsigned int WM8766_PL_RIGHT_LRMIX ;
 unsigned int WM8766_PL_RIGHT_MASK ;
 unsigned int WM8766_PL_RIGHT_RIGHT ;
 int wm8766_write_cached (struct oxygen*,size_t,unsigned int) ;

__attribute__((used)) static void update_wm8766_center_lfe_mix(struct oxygen *chip, bool mixed)
{
 struct xonar_wm87x6 *data = chip->model_data;
 unsigned int reg;





 reg = data->wm8766_regs[WM8766_DAC_CTRL] &
  ~(WM8766_PL_LEFT_MASK | WM8766_PL_RIGHT_MASK);
 if (mixed)
  reg |= WM8766_PL_LEFT_LRMIX | WM8766_PL_RIGHT_LRMIX;
 else
  reg |= WM8766_PL_LEFT_LEFT | WM8766_PL_RIGHT_RIGHT;
 wm8766_write_cached(chip, WM8766_DAC_CTRL, reg);
}
