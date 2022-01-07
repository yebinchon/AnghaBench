
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct zsMicVar {void* k1; void* k0; } ;


 void* zfGetU32t (int *) ;
 int zfMicClear (struct zsMicVar*) ;

void zfMicSetKey(u8_t* key, struct zsMicVar* pMic)
{
    pMic->k0 = zfGetU32t(key);
    pMic->k1 = zfGetU32t(key+4);
    zfMicClear(pMic);
}
