
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds_device {int dummy; } ;


 int ds_read_block (struct ds_device*,int*,int) ;

__attribute__((used)) static u8 ds9490r_read_block(void *data, u8 *buf, int len)
{
 struct ds_device *dev = data;
 int err;

 err = ds_read_block(dev, buf, len);
 if (err < 0)
  return 0;

 return len;
}
