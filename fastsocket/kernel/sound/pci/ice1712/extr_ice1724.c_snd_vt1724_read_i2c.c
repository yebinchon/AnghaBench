
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int i2c_mutex; } ;


 int I2C_BYTE_ADDR ;
 int I2C_DATA ;
 int I2C_DEV_ADDR ;
 int ICEREG1724 (struct snd_ice1712*,int ) ;
 unsigned char VT1724_I2C_WRITE ;
 unsigned char inb (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (unsigned char,int ) ;
 int wait_i2c_busy (struct snd_ice1712*) ;

unsigned char snd_vt1724_read_i2c(struct snd_ice1712 *ice,
      unsigned char dev, unsigned char addr)
{
 unsigned char val;

 mutex_lock(&ice->i2c_mutex);
 wait_i2c_busy(ice);
 outb(addr, ICEREG1724(ice, I2C_BYTE_ADDR));
 outb(dev & ~VT1724_I2C_WRITE, ICEREG1724(ice, I2C_DEV_ADDR));
 wait_i2c_busy(ice);
 val = inb(ICEREG1724(ice, I2C_DATA));
 mutex_unlock(&ice->i2c_mutex);



 return val;
}
