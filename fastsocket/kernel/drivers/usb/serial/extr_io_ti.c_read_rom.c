
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ TiMode; } ;
struct edgeport_serial {int TI_I2C_Type; TYPE_2__* serial; TYPE_1__ product_info; } ;
typedef int __u8 ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ TI_MODE_DOWNLOAD ;
 int read_boot_mem (struct edgeport_serial*,int,int,int *) ;
 int read_download_mem (int ,int,int,int ,int *) ;

__attribute__((used)) static int read_rom(struct edgeport_serial *serial,
    int start_address, int length, __u8 *buffer)
{
 int status;

 if (serial->product_info.TiMode == TI_MODE_DOWNLOAD) {
  status = read_download_mem(serial->serial->dev,
            start_address,
            length,
            serial->TI_I2C_Type,
            buffer);
 } else {
  status = read_boot_mem(serial, start_address, length,
        buffer);
 }
 return status;
}
