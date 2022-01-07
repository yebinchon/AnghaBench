
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_8__ {int * abyAddr2; } ;
struct TYPE_7__ {size_t cbDFCB; TYPE_1__* sRxDFCB; } ;
struct TYPE_6__ {scalar_t__ bInUse; int * abyAddr2; } ;
typedef TYPE_2__* PSDevice ;
typedef TYPE_3__* PS802_11Header ;


 scalar_t__ IS_ETH_ADDRESS_EQUAL (int *,int *) ;
 scalar_t__ TRUE ;

UINT WCTLuSearchDFCB (PSDevice pDevice, PS802_11Header pMACHeader)
{
UINT ii;

    for(ii=0;ii<pDevice->cbDFCB;ii++) {
        if ((pDevice->sRxDFCB[ii].bInUse == TRUE) &&
            (IS_ETH_ADDRESS_EQUAL (&(pDevice->sRxDFCB[ii].abyAddr2[0]), &(pMACHeader->abyAddr2[0])))
            ) {

            return(ii);
        }
    }
    return(pDevice->cbDFCB);
}
