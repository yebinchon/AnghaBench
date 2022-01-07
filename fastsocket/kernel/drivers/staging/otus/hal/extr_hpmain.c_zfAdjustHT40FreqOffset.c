
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;



u32_t zfAdjustHT40FreqOffset(zdev_t* dev, u32_t frequency, u8_t bw40, u8_t extOffset)
{
    u32_t newFreq = frequency;

 if (bw40 == 1)
 {
        if (extOffset == 1)
        {
            newFreq += 10;
        }
        else
        {
            newFreq -= 10;
        }
 }
 return newFreq;
}
