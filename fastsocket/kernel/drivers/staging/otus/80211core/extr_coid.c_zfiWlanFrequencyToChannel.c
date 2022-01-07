
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;


 int zfChFreqToNum (int ,int *) ;

u8_t zfiWlanFrequencyToChannel(zdev_t* dev, u16_t freq)
{
    u8_t is5GBand = 0;

    return zfChFreqToNum(freq, &is5GBand);
}
