
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int* sbox_table ;
 int xor_32 (int*,int*,int*) ;

void AddRoundKey(BYTE *key, int round)
{
BYTE sbox_key[4];
BYTE rcon_table[10] = { 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36};

    sbox_key[0] = sbox_table[key[13]];
    sbox_key[1] = sbox_table[key[14]];
    sbox_key[2] = sbox_table[key[15]];
    sbox_key[3] = sbox_table[key[12]];

    key[0] = key[0] ^ rcon_table[round];
    xor_32(&key[0], sbox_key, &key[0]);

    xor_32(&key[4], &key[0], &key[4]);
    xor_32(&key[8], &key[4], &key[8]);
    xor_32(&key[12], &key[8], &key[12]);
}
