
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {int dummy; } ;


 unsigned char inb (unsigned long) ;

__attribute__((used)) static unsigned char mpu401_read_port(struct snd_mpu401 *mpu,
          unsigned long addr)
{
 return inb(addr);
}
