
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_wm87x6 {unsigned int* wm8766_regs; } ;
struct oxygen {struct xonar_wm87x6* model_data; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 int wm8766_write (struct oxygen*,unsigned int,unsigned int) ;

__attribute__((used)) static void wm8766_write_cached(struct oxygen *chip,
    unsigned int reg, unsigned int value)
{
 struct xonar_wm87x6 *data = chip->model_data;

 if (reg >= ARRAY_SIZE(data->wm8766_regs) ||
     value != data->wm8766_regs[reg])
  wm8766_write(chip, reg, value);
}
