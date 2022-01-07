
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {struct cx25821_i2c* algo_data; } ;
struct cx25821_i2c {int reg_stat; struct cx25821_dev* dev; } ;
struct cx25821_dev {int dummy; } ;


 int cx_read (int ) ;

__attribute__((used)) static inline int i2c_is_busy(struct i2c_adapter *i2c_adap)
{
 struct cx25821_i2c *bus = i2c_adap->algo_data;
 struct cx25821_dev *dev = bus->dev;
 return cx_read(bus->reg_stat) & 0x02 ? 1 : 0;
}
