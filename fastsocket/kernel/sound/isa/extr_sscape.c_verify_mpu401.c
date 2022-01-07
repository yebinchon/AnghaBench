
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {int dummy; } ;


 int MPU401C (struct snd_mpu401 const*) ;
 int inb (int ) ;

__attribute__((used)) static inline int verify_mpu401(const struct snd_mpu401 * mpu)
{
 return ((inb(MPU401C(mpu)) & 0xc0) == 0x80);
}
