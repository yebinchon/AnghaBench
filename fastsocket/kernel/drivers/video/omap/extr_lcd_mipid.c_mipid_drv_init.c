
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mipid_spi_driver ;
 int spi_register_driver (int *) ;

__attribute__((used)) static int mipid_drv_init(void)
{
 spi_register_driver(&mipid_spi_driver);

 return 0;
}
