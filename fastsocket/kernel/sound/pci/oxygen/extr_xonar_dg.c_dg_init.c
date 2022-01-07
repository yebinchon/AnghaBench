
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {struct dg* model_data; } ;
struct dg {int input_sel; int hp_vol_att; scalar_t__ output_sel; } ;


 int GPIO_HP_DETECT ;
 int GPIO_HP_REAR ;
 int GPIO_INPUT_ROUTE ;
 int GPIO_MAGIC ;
 int GPIO_OUTPUT_ENABLE ;
 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int cs4245_init (struct oxygen*) ;
 int dg_output_enable (struct oxygen*) ;
 int oxygen_clear_bits16 (struct oxygen*,int ,int) ;
 int oxygen_set_bits16 (struct oxygen*,int ,int) ;

__attribute__((used)) static void dg_init(struct oxygen *chip)
{
 struct dg *data = chip->model_data;

 data->output_sel = 0;
 data->input_sel = 3;
 data->hp_vol_att = 2 * 16;

 cs4245_init(chip);

 oxygen_clear_bits16(chip, OXYGEN_GPIO_CONTROL,
       GPIO_MAGIC | GPIO_HP_DETECT);
 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL,
     GPIO_INPUT_ROUTE | GPIO_HP_REAR | GPIO_OUTPUT_ENABLE);
 oxygen_clear_bits16(chip, OXYGEN_GPIO_DATA,
       GPIO_INPUT_ROUTE | GPIO_HP_REAR);
 dg_output_enable(chip);
}
