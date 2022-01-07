
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct w1_bus_master {int dummy; } ;
struct TYPE_3__ {int * set_pullup; int * reset_bus; int * write_block; int * read_block; int * write_byte; int * read_byte; int * touch_bit; struct ds_device* data; } ;
struct ds_device {TYPE_1__ master; } ;


 int ds9490r_read_block ;
 int ds9490r_read_byte ;
 int ds9490r_reset ;
 int ds9490r_set_pullup ;
 int ds9490r_touch_bit ;
 int ds9490r_write_block ;
 int ds9490r_write_byte ;
 int ds_reset_device (struct ds_device*) ;
 int memset (TYPE_1__*,int ,int) ;
 int w1_add_master_device (TYPE_1__*) ;

__attribute__((used)) static int ds_w1_init(struct ds_device *dev)
{
 memset(&dev->master, 0, sizeof(struct w1_bus_master));
 ds_reset_device(dev);

 dev->master.data = dev;
 dev->master.touch_bit = &ds9490r_touch_bit;
 dev->master.read_byte = &ds9490r_read_byte;
 dev->master.write_byte = &ds9490r_write_byte;
 dev->master.read_block = &ds9490r_read_block;
 dev->master.write_block = &ds9490r_write_block;
 dev->master.reset_bus = &ds9490r_reset;
 dev->master.set_pullup = &ds9490r_set_pullup;

 return w1_add_master_device(&dev->master);
}
