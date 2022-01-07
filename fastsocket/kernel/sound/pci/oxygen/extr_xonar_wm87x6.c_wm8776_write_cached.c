
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_wm87x6 {unsigned int* wm8776_regs; } ;
struct oxygen {struct xonar_wm87x6* model_data; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 int wm8776_write (struct oxygen*,unsigned int,unsigned int) ;

__attribute__((used)) static void wm8776_write_cached(struct oxygen *chip,
    unsigned int reg, unsigned int value)
{
 struct xonar_wm87x6 *data = chip->model_data;

 if (reg >= ARRAY_SIZE(data->wm8776_regs) ||
     value != data->wm8776_regs[reg])
  wm8776_write(chip, reg, value);
}
