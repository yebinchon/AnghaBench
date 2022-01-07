
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds_device {int dummy; } ;


 int ds_write_byte (struct ds_device*,int ) ;

__attribute__((used)) static void ds9490r_write_byte(void *data, u8 byte)
{
 struct ds_device *dev = data;

 ds_write_byte(dev, byte);
}
