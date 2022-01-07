
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds_device {int dummy; } ;


 int ds_read_byte (struct ds_device*,int *) ;

__attribute__((used)) static u8 ds9490r_read_byte(void *data)
{
 struct ds_device *dev = data;
 int err;
 u8 byte = 0;

 err = ds_read_byte(dev, &byte);
 if (err)
  return 0;

 return byte;
}
