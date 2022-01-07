
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KB3886_ADC_DAC_PWM ;
 int KB3886_IO ;
 int KB3886_PARENT ;
 int KB3886_PWM0_WRITE ;
 int bl_mutex ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;

__attribute__((used)) static void kb3886_bl_set_intensity(int intensity)
{
 mutex_lock(&bl_mutex);
 intensity = intensity&0xff;
 outb(KB3886_ADC_DAC_PWM, KB3886_PARENT);
 msleep(10);
 outb(KB3886_PWM0_WRITE, KB3886_IO);
 msleep(10);
 outb(intensity, KB3886_IO);
 mutex_unlock(&bl_mutex);
}
