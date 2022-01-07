
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {struct generic_data* model_data; } ;
struct generic_data {unsigned int* wm8785_regs; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int OXYGEN_SPI_CEN_LATCH_CLOCK_LO ;
 int OXYGEN_SPI_CLOCK_160 ;
 int OXYGEN_SPI_CODEC_SHIFT ;
 int OXYGEN_SPI_DATA_LENGTH_2 ;
 int OXYGEN_SPI_TRIGGER ;
 int oxygen_write_spi (struct oxygen*,int,int) ;

__attribute__((used)) static void wm8785_write(struct oxygen *chip, u8 reg, unsigned int value)
{
 struct generic_data *data = chip->model_data;

 oxygen_write_spi(chip, OXYGEN_SPI_TRIGGER |
    OXYGEN_SPI_DATA_LENGTH_2 |
    OXYGEN_SPI_CLOCK_160 |
    (3 << OXYGEN_SPI_CODEC_SHIFT) |
    OXYGEN_SPI_CEN_LATCH_CLOCK_LO,
    (reg << 9) | value);
 if (reg < ARRAY_SIZE(data->wm8785_regs))
  data->wm8785_regs[reg] = value;
}
