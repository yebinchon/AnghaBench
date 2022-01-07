
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundscape {int dummy; } ;
struct snd_mpu401 {scalar_t__ private_data; } ;



__attribute__((used)) static inline struct soundscape *get_mpu401_soundscape(struct snd_mpu401 * mpu)
{
 return (struct soundscape *) (mpu->private_data);
}
