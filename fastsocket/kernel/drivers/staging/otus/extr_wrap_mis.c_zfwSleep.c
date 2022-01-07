
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;


 scalar_t__ in_interrupt () ;
 int mdelay (int) ;

void zfwSleep(zdev_t* dev, u32_t ms)
{
    if (in_interrupt() == 0)
    {
        mdelay(ms);
    }
    else
    {
        int ii;
        int iter = 100000 * ms;

        for (ii = 0; ii < iter; ii++)
        {

        }
    }
}
