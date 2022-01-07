
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef void* u32_t ;
typedef int u16_t ;
struct zsTkipSeed {int iv16; void* iv32; int tk; int ta; } ;


 int zfMemoryCopy (int ,int*,int) ;
 int zfTkipPhase1KeyMix (void*,struct zsTkipSeed*) ;
 int zfZeroMemory (int*,int) ;

void zfTkipInit(u8_t* key, u8_t* ta, struct zsTkipSeed* pSeed, u8_t* initIv)
{
    u16_t iv16;
    u32_t iv32;
    u16_t i;


    zfZeroMemory((u8_t*) pSeed, sizeof(struct zsTkipSeed));

    zfMemoryCopy(pSeed->ta, ta, 6);
    zfMemoryCopy(pSeed->tk, key, 16);

    iv16 = *initIv++;
    iv16 += *initIv<<8;
    initIv++;

    iv32=0;

    for(i=0; i<4; i++)
    {
        iv32 += *initIv<<(i*8);
        *initIv++;
    }

    pSeed->iv32 = iv32+1;
    zfTkipPhase1KeyMix(iv32, pSeed);

    pSeed->iv16 = iv16;
    pSeed->iv32 = iv32;
}
