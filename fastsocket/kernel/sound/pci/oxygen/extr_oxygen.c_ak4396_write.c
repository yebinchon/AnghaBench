
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {struct generic_data* model_data; } ;
struct generic_data {int** ak4396_regs; } ;


 int AK4396_WRITE ;
 int const OXYGEN_SPI_CEN_LATCH_CLOCK_HI ;
 int const OXYGEN_SPI_CLOCK_160 ;
 int const OXYGEN_SPI_CODEC_SHIFT ;
 int const OXYGEN_SPI_DATA_LENGTH_2 ;
 int const OXYGEN_SPI_TRIGGER ;
 int oxygen_write_spi (struct oxygen*,int const,int) ;

__attribute__((used)) static void ak4396_write(struct oxygen *chip, unsigned int codec,
    u8 reg, u8 value)
{

 static const u8 codec_spi_map[4] = {
  0, 1, 2, 4
 };
 struct generic_data *data = chip->model_data;

 oxygen_write_spi(chip, OXYGEN_SPI_TRIGGER |
    OXYGEN_SPI_DATA_LENGTH_2 |
    OXYGEN_SPI_CLOCK_160 |
    (codec_spi_map[codec] << OXYGEN_SPI_CODEC_SHIFT) |
    OXYGEN_SPI_CEN_LATCH_CLOCK_HI,
    AK4396_WRITE | (reg << 8) | value);
 data->ak4396_regs[codec][reg] = value;
}
