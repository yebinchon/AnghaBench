
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* TKIP_Sbox_Lower ;
 int* TKIP_Sbox_Upper ;

unsigned int tkip_sbox(unsigned int index)
{
    unsigned int index_low;
    unsigned int index_high;
    unsigned int left, right;

    index_low = (index % 256);
    index_high = ((index >> 8) % 256);

    left = TKIP_Sbox_Lower[index_low] + (TKIP_Sbox_Upper[index_low] * 256);
    right = TKIP_Sbox_Upper[index_high] + (TKIP_Sbox_Lower[index_high] * 256);

    return (left ^ right);
}
