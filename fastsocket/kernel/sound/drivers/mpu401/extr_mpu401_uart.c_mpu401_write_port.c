
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {int dummy; } ;


 int outb (unsigned char,unsigned long) ;

__attribute__((used)) static void mpu401_write_port(struct snd_mpu401 *mpu, unsigned char data,
         unsigned long addr)
{
 outb(data, addr);
}
