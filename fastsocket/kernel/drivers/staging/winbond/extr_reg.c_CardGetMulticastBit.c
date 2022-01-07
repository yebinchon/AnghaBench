
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CardComputeCrc (int*,int ) ;
 int ETH_ALEN ;

void CardGetMulticastBit( u8 Address[ETH_ALEN], u8 *Byte, u8 *Value )
{
    u32 Crc;
    u32 BitNumber;


    Crc = CardComputeCrc(Address, ETH_ALEN);



 BitNumber = (u32) ((Crc >> 26) & 0x3f);

 *Byte = (u8) (BitNumber >> 3);
 *Value = (u8) ((u8)1 << (BitNumber % 8));
}
