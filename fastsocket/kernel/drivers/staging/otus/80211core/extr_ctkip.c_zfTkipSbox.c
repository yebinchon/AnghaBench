
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;


 int* zgTkipSboxLower ;
 int* zgTkipSboxUpper ;

u16_t zfTkipSbox(u16_t index)
{
    u16_t low;
    u16_t high;
    u16_t left, right;

    low = (index & 0xFF);
    high = ((index >> 8) & 0xFF);

    left = zgTkipSboxLower[low] + (zgTkipSboxUpper[low] << 8 );
    right = zgTkipSboxUpper[high] + (zgTkipSboxLower[high] << 8 );

    return (left ^ right);
}
