
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;


 int ZM_CH_G_1 ;
 int ZM_CH_G_14 ;

u16_t zfChNumToFreq(zdev_t* dev, u8_t ch, u8_t freqBand)
{
    u16_t freq = 0xffff;

    if ( freqBand == 0 )
    {
        if (ch > 14)
        {
            freqBand = 2;
        }
        else
        {
            freqBand = 1;
        }
    }

    if ( freqBand == 2 )
    {
        if ( (ch >= 184)&&(ch <= 196) )
        {
            freq = 4000 + ch*5;
        }
        else
        {
            freq = 5000 + ch*5;
        }
    }
    else
    {
        if ( ch == 14 )
        {
            freq = ZM_CH_G_14;
        }
        else
        {
            freq = ZM_CH_G_1 + (ch-1)*5;
        }
    }

    return freq;
}
