
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {size_t* abystate; int ux; size_t uy; } ;
typedef TYPE_1__* PRC4Ext ;
typedef size_t* PBYTE ;
typedef size_t BYTE ;



UINT rc4_byte(PRC4Ext pRC4)
{
    UINT ux;
    UINT uy;
    UINT ustx, usty;
    PBYTE pbyst;

    pbyst = pRC4->abystate;
    ux = (pRC4->ux + 1) & 0xff;
    ustx = pbyst[ux];
    uy = (ustx + pRC4->uy) & 0xff;
    usty = pbyst[uy];
    pRC4->ux = ux;
    pRC4->uy = uy;
    pbyst[uy] = (BYTE)ustx;
    pbyst[ux] = (BYTE)usty;

    return pbyst[(ustx + usty) & 0xff];
}
