
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int* Buf; scalar_t__* LenInBitCount; } ;
typedef TYPE_1__ SHA_CTX ;



VOID SHAInit(SHA_CTX *pCtx)
{
    pCtx->Buf[0]=0x67452301;
    pCtx->Buf[1]=0xefcdab89;
    pCtx->Buf[2]=0x98badcfe;
    pCtx->Buf[3]=0x10325476;
    pCtx->Buf[4]=0xc3d2e1f0;

    pCtx->LenInBitCount[0]=0;
    pCtx->LenInBitCount[1]=0;
}
