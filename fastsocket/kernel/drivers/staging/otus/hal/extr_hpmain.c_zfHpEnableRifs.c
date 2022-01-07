
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;


 int reg_write (int,int) ;
 int zfFlushDelayWrite (int *) ;

void zfHpEnableRifs(zdev_t* dev, u8_t mode24g, u8_t modeHt, u8_t modeHt2040)
{






    reg_write (0x9800+(738<<2), 0x08000000 | (0x1 << 26) | (0x1 << 27));



    reg_write (0x99ec, 0x0cc80caa);


    if (modeHt == 1)
    {
        if (modeHt2040 == 0x1)
        {
            reg_write(0x9800+(70<<2), 40);
        }
        else
        {
            reg_write(0x9800+(70<<2), 20);
            if(mode24g == 0x0)
            {




                reg_write(0x9800+(24<<2), (0x0004dd10 & 0xffffffc7) | (0x4 << 3));
            }
        }
    }

    if (mode24g == 0x1)
    {
        reg_write(0x9850, 0xece8b4e4);

        reg_write(0x985c, 0x313a5d5e);
    }
    else
    {
        reg_write(0x9850, 0xede8b4e4);
        reg_write(0x985c, 0x3139605e);
    }

    zfFlushDelayWrite(dev);

    return;
}
