
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;



u32
CardComputeCrc(u8 * Buffer, u32 Length)
{
    u32 Crc, Carry;
    u32 i, j;
    u8 CurByte;

    Crc = 0xffffffff;

    for (i = 0; i < Length; i++) {

        CurByte = Buffer[i];

        for (j = 0; j < 8; j++) {

            Carry = ((Crc & 0x80000000) ? 1 : 0) ^ (CurByte & 0x01);
            Crc <<= 1;
            CurByte >>= 1;

            if (Carry) {
                Crc =(Crc ^ 0x04c11db6) | Carry;
            }
        }
    }

    return Crc;
}
