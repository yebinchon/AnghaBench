
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UINT32 ;


 int CYCLIC_LEFT_SHIFT (int,int) ;
 int SHA1Step (int ,int,int,int,int,int,int,int) ;
 int SHA1_F1 ;
 int SHA1_F2 ;
 int SHA1_F3 ;

VOID SHATransform(UINT32 Buf[5], UINT32 Mes[20])
{
    UINT32 Reg[5],Temp;
 unsigned int i;
    UINT32 W[80];

    static UINT32 SHA1Table[4] = { 0x5a827999, 0x6ed9eba1,
                                  0x8f1bbcdc, 0xca62c1d6 };

    Reg[0]=Buf[0];
 Reg[1]=Buf[1];
 Reg[2]=Buf[2];
 Reg[3]=Buf[3];
 Reg[4]=Buf[4];


 for(i = 0; i < 16; i++)
    {
     W[i] = (Mes[i] >> 24) & 0xff;
        W[i] |= (Mes[i] >> 8 ) & 0xff00;
        W[i] |= (Mes[i] << 8 ) & 0xff0000;
        W[i] |= (Mes[i] << 24) & 0xff000000;
    }


    for (i = 0; i < 64; i++)
     W[16+i] = CYCLIC_LEFT_SHIFT(W[i] ^ W[2+i] ^ W[8+i] ^ W[13+i], 1);



    for (i=0; i<80; i++)
    {
        if (i<20)
            SHA1Step(SHA1_F1, Reg[0], Reg[1], Reg[2], Reg[3], Reg[4],
                     W[i], SHA1Table[0]);

        else if (i>=20 && i<40)
            SHA1Step(SHA1_F2, Reg[0], Reg[1], Reg[2], Reg[3], Reg[4],
                     W[i], SHA1Table[1]);

  else if (i>=40 && i<60)
            SHA1Step(SHA1_F3, Reg[0], Reg[1], Reg[2], Reg[3], Reg[4],
                      W[i], SHA1Table[2]);

        else
            SHA1Step(SHA1_F2, Reg[0], Reg[1], Reg[2], Reg[3], Reg[4],
                     W[i], SHA1Table[3]);



  Temp = Reg[4];
        Reg[4] = Reg[3];
        Reg[3] = Reg[2];
        Reg[2] = Reg[1];
        Reg[1] = Reg[0];
        Reg[0] = Temp;

    }



    for (i=0; i<5; i++)
        Buf[i] += Reg[i];

}
