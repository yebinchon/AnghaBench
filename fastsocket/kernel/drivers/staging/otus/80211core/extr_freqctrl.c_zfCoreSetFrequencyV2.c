
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfpFreqChangeCompleteCb ;
typedef int zdev_t ;
typedef int u16_t ;


 int zfCoreSetFrequencyEx (int *,int ,int ,int ,int ) ;

void zfCoreSetFrequencyV2(zdev_t* dev, u16_t frequency, zfpFreqChangeCompleteCb cb)
{
    zfCoreSetFrequencyEx(dev, frequency, 0, 0, cb);
}
