
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int AddRoundKey (int *,int) ;
 int MixColumns (int *,int *) ;
 int ShiftRows (int *,int *) ;
 int SubBytes (int *,int *) ;
 int xor_128 (int *,int *,int *) ;

void AESv128(BYTE *key, BYTE *data, BYTE *ciphertext)
{
int i;
int round;
BYTE TmpdataA[16];
BYTE TmpdataB[16];
BYTE abyRoundKey[16];

    for(i=0; i<16; i++)
        abyRoundKey[i] = key[i];

    for (round = 0; round < 11; round++)
    {
        if (round == 0)
        {
            xor_128(abyRoundKey, data, ciphertext);
            AddRoundKey(abyRoundKey, round);
        }
        else if (round == 10)
        {
            SubBytes(ciphertext, TmpdataA);
            ShiftRows(TmpdataA, TmpdataB);
            xor_128(TmpdataB, abyRoundKey, ciphertext);
        }
        else
        {
            SubBytes(ciphertext, TmpdataA);
            ShiftRows(TmpdataA, TmpdataB);
            MixColumns(&TmpdataB[0], &TmpdataA[0]);
            MixColumns(&TmpdataB[4], &TmpdataA[4]);
            MixColumns(&TmpdataB[8], &TmpdataA[8]);
            MixColumns(&TmpdataB[12], &TmpdataA[12]);
            xor_128(TmpdataA, abyRoundKey, ciphertext);
            AddRoundKey(abyRoundKey, round);
        }
    }

}
