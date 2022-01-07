
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfpFreqChangeCompleteCb ;
typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;


 int zfCoreSetFrequencyExV2 (int *,int ,int ,int ,int ,int ) ;

void zfCoreSetFrequencyEx(zdev_t* dev, u16_t frequency, u8_t bw40,
        u8_t extOffset, zfpFreqChangeCompleteCb cb)
{
    zfCoreSetFrequencyExV2(dev, frequency, bw40, extOffset, cb, 0);
}
