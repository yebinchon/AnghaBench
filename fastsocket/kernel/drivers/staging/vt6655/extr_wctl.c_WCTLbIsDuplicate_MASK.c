#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ wSeqCtl; int /*<<< orphan*/ * abyAddr2; } ;
struct TYPE_8__ {scalar_t__ uInPtr; TYPE_1__* asCacheEntry; } ;
struct TYPE_7__ {scalar_t__ wFmSequence; int /*<<< orphan*/ * abyAddr2; } ;
typedef  TYPE_1__* PSCacheEntry ;
typedef  TYPE_2__* PSCache ;
typedef  TYPE_3__* PS802_11Header ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ DUPLICATE_RX_CACHE_LENGTH ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  U_ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOL FUNC4 (PSCache pCache, PS802_11Header pMACHeader)
{
    UINT            uIndex;
    UINT            ii;
    PSCacheEntry    pCacheEntry;

    if (FUNC2(pMACHeader)) {

        uIndex = pCache->uInPtr;
        for (ii = 0; ii < DUPLICATE_RX_CACHE_LENGTH; ii++) {
            pCacheEntry = &(pCache->asCacheEntry[uIndex]);
            if ((pCacheEntry->wFmSequence == pMACHeader->wSeqCtl) &&
                (FUNC1 (&(pCacheEntry->abyAddr2[0]), &(pMACHeader->abyAddr2[0])))
                ) {
                /* Duplicate match */
                return TRUE;
            }
            FUNC0(uIndex, DUPLICATE_RX_CACHE_LENGTH);
        }
    }
    /* Not fount in cache - insert */
    pCacheEntry = &pCache->asCacheEntry[pCache->uInPtr];
    pCacheEntry->wFmSequence = pMACHeader->wSeqCtl;
    FUNC3(&(pCacheEntry->abyAddr2[0]), &(pMACHeader->abyAddr2[0]), U_ETHER_ADDR_LEN);
    FUNC0(pCache->uInPtr, DUPLICATE_RX_CACHE_LENGTH);
    return FALSE;
}