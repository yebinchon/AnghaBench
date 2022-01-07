
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t BYTE ;


 size_t* sbox_table ;

void SubBytes(BYTE *in, BYTE *out)
{
int i;

    for (i=0; i< 16; i++)
    {
        out[i] = sbox_table[in[i]];
    }
}
