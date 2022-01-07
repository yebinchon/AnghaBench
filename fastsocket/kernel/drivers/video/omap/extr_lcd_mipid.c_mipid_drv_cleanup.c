
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mipid_spi_driver ;
 int spi_unregister_driver (int *) ;

__attribute__((used)) static void mipid_drv_cleanup(void)
{
 spi_unregister_driver(&mipid_spi_driver);
}
