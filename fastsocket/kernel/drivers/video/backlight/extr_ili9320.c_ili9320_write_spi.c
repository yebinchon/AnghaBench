
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ili9320_spi {unsigned char* buffer_addr; unsigned char* buffer_data; unsigned char id; int message; int dev; } ;
struct TYPE_2__ {struct ili9320_spi spi; } ;
struct ili9320 {TYPE_1__ access; } ;


 unsigned char ILI9320_SPI_DATA ;
 unsigned char ILI9320_SPI_INDEX ;
 unsigned char ILI9320_SPI_WRITE ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static inline int ili9320_write_spi(struct ili9320 *ili,
        unsigned int reg,
        unsigned int value)
{
 struct ili9320_spi *spi = &ili->access.spi;
 unsigned char *addr = spi->buffer_addr;
 unsigned char *data = spi->buffer_data;





 addr[0] = spi->id | ILI9320_SPI_INDEX | ILI9320_SPI_WRITE;
 addr[1] = reg >> 8;
 addr[2] = reg;



 data[0] = spi->id | ILI9320_SPI_DATA | ILI9320_SPI_WRITE;
  data[1] = value >> 8;
 data[2] = value;

 return spi_sync(spi->dev, &spi->message);
}
