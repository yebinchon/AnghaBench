
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_generic {int output_enable_bit; } ;
struct oxygen {struct xonar_generic* model_data; } ;


 int OXYGEN_GPIO_DATA ;
 int oxygen_clear_bits16 (struct oxygen*,int ,int ) ;

void xonar_disable_output(struct oxygen *chip)
{
 struct xonar_generic *data = chip->model_data;

 oxygen_clear_bits16(chip, OXYGEN_GPIO_DATA, data->output_enable_bit);
}
