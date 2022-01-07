
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef scalar_t__ u8_t ;


 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;

void zfHpSetRifs(zdev_t* dev, u8_t ht_enable, u8_t ht2040, u8_t g_mode)
{
    zfDelayWriteInternalReg(dev, 0x1c6388, 0x0c000000);

    zfDelayWriteInternalReg(dev, 0x1c59ec, 0x0cc80caa);

    if (ht_enable)
    {
        if (ht2040)
        {
            zfDelayWriteInternalReg(dev, 0x1c5918, 40);
        }
        else
        {
            zfDelayWriteInternalReg(dev, 0x1c5918, 20);
        }
    }

    if (g_mode)
    {
        zfDelayWriteInternalReg(dev, 0x1c5850, 0xec08b4e2);
        zfDelayWriteInternalReg(dev, 0x1c585c, 0x313a5d5e);
    }
    else
    {
        zfDelayWriteInternalReg(dev, 0x1c5850, 0xede8b4e0);
        zfDelayWriteInternalReg(dev, 0x1c585c, 0x3139605e);
    }

    zfFlushDelayWrite(dev);
    return;
}
