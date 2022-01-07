
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zsMicVar {scalar_t__ m; scalar_t__ nBytes; int k1; int right; int k0; int left; } ;



void zfMicClear(struct zsMicVar* pMic)
{
    pMic->left = pMic->k0;
    pMic->right = pMic->k1;
    pMic->nBytes = 0;
    pMic->m = 0;
}
