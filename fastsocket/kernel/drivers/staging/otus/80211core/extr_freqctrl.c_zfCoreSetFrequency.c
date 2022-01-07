
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u16_t ;


 int zfCoreSetFrequencyV2 (int *,int ,int *) ;

void zfCoreSetFrequency(zdev_t* dev, u16_t frequency)
{
    zfCoreSetFrequencyV2(dev, frequency, ((void*)0));
}
