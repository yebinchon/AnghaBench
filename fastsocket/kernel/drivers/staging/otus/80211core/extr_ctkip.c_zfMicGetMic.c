
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct zsMicVar {scalar_t__ nBytes; int right; int left; } ;


 int zfMicAppendByte (int,struct zsMicVar*) ;
 int zfMicClear (struct zsMicVar*) ;
 int zfPutU32t (int *,int ) ;

void zfMicGetMic(u8_t* dst, struct zsMicVar* pMic)
{

    zfMicAppendByte(0x5a, pMic);
    zfMicAppendByte(0, pMic);
    zfMicAppendByte(0, pMic);
    zfMicAppendByte(0, pMic);
    zfMicAppendByte(0, pMic);


    while( pMic->nBytes != 0 )
    {
        zfMicAppendByte(0, pMic);
    }


    zfPutU32t(dst, pMic->left);
    zfPutU32t(dst+4, pMic->right);


    zfMicClear(pMic);

}
