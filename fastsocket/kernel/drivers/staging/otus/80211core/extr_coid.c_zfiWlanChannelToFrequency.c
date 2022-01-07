
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;


 int zfChNumToFreq (int *,int ,int ) ;

u16_t zfiWlanChannelToFrequency(zdev_t* dev, u8_t channel)
{
    return zfChNumToFreq(dev, channel, 0);
}
