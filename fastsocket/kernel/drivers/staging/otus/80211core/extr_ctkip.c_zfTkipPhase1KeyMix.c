
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsTkipSeed {int iv32; int* ttak; int* ta; int iv32tmp; int * tk; } ;


 int ZM_BYTE_TO_WORD (int ,int ) ;
 int zfTkipSbox (int) ;

u8_t zfTkipPhase1KeyMix(u32_t iv32, struct zsTkipSeed* pSeed)
{
    u16_t tsc0;
    u16_t tsc1;
    u16_t i, j;







    tsc0 = (u16_t) ((iv32 >> 16) & 0xffff);
    tsc1 = (u16_t) (iv32 & 0xffff);


    pSeed->ttak[0] = tsc1;
    pSeed->ttak[1] = tsc0;
    pSeed->ttak[2] = (u16_t) (pSeed->ta[0] + (pSeed->ta[1] <<8));
    pSeed->ttak[3] = (u16_t) (pSeed->ta[2] + (pSeed->ta[3] <<8));
    pSeed->ttak[4] = (u16_t) (pSeed->ta[4] + (pSeed->ta[5] <<8));


    for (i=0; i<8; i++)
    {
        j = 2*(i & 1);
        pSeed->ttak[0] =(pSeed->ttak[0] + zfTkipSbox(pSeed->ttak[4]
                         ^ ZM_BYTE_TO_WORD(pSeed->tk[1+j], pSeed->tk[j])))
                        & 0xffff;
        pSeed->ttak[1] =(pSeed->ttak[1] + zfTkipSbox(pSeed->ttak[0]
                         ^ ZM_BYTE_TO_WORD(pSeed->tk[5+j], pSeed->tk[4+j] )))
                        & 0xffff;
        pSeed->ttak[2] =(pSeed->ttak[2] + zfTkipSbox(pSeed->ttak[1]
                         ^ ZM_BYTE_TO_WORD(pSeed->tk[9+j], pSeed->tk[8+j] )))
                        & 0xffff;
        pSeed->ttak[3] =(pSeed->ttak[3] + zfTkipSbox(pSeed->ttak[2]
                         ^ ZM_BYTE_TO_WORD(pSeed->tk[13+j], pSeed->tk[12+j])))
                        & 0xffff;
        pSeed->ttak[4] =(pSeed->ttak[4] + zfTkipSbox(pSeed->ttak[3]
                         ^ ZM_BYTE_TO_WORD(pSeed->tk[1+j], pSeed->tk[j] )))
                        & 0xffff;
        pSeed->ttak[4] =(pSeed->ttak[4] + i) & 0xffff;
    }

    if ( iv32 == (pSeed->iv32+1) )
    {
        pSeed->iv32tmp = iv32;
        return 1;
    }

    return 0;
}
