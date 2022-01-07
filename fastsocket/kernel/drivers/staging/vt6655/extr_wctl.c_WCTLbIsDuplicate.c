
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ wSeqCtl; int * abyAddr2; } ;
struct TYPE_8__ {scalar_t__ uInPtr; TYPE_1__* asCacheEntry; } ;
struct TYPE_7__ {scalar_t__ wFmSequence; int * abyAddr2; } ;
typedef TYPE_1__* PSCacheEntry ;
typedef TYPE_2__* PSCache ;
typedef TYPE_3__* PS802_11Header ;
typedef int BOOL ;


 int ADD_ONE_WITH_WRAP_AROUND (scalar_t__,scalar_t__) ;
 scalar_t__ DUPLICATE_RX_CACHE_LENGTH ;
 int FALSE ;
 scalar_t__ IS_ETH_ADDRESS_EQUAL (int *,int *) ;
 scalar_t__ IS_FC_RETRY (TYPE_3__*) ;
 int TRUE ;
 int U_ETHER_ADDR_LEN ;
 int memcpy (int *,int *,int ) ;

BOOL WCTLbIsDuplicate (PSCache pCache, PS802_11Header pMACHeader)
{
    UINT uIndex;
    UINT ii;
    PSCacheEntry pCacheEntry;

    if (IS_FC_RETRY(pMACHeader)) {

        uIndex = pCache->uInPtr;
        for (ii = 0; ii < DUPLICATE_RX_CACHE_LENGTH; ii++) {
            pCacheEntry = &(pCache->asCacheEntry[uIndex]);
            if ((pCacheEntry->wFmSequence == pMACHeader->wSeqCtl) &&
                (IS_ETH_ADDRESS_EQUAL (&(pCacheEntry->abyAddr2[0]), &(pMACHeader->abyAddr2[0])))
                ) {

                return TRUE;
            }
            ADD_ONE_WITH_WRAP_AROUND(uIndex, DUPLICATE_RX_CACHE_LENGTH);
        }
    }

    pCacheEntry = &pCache->asCacheEntry[pCache->uInPtr];
    pCacheEntry->wFmSequence = pMACHeader->wSeqCtl;
    memcpy(&(pCacheEntry->abyAddr2[0]), &(pMACHeader->abyAddr2[0]), U_ETHER_ADDR_LEN);
    ADD_ONE_WITH_WRAP_AROUND(pCache->uInPtr, DUPLICATE_RX_CACHE_LENGTH);
    return FALSE;
}
