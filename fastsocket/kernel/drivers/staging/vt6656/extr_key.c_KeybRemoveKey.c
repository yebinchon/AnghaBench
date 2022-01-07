
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* KeyTable; } ;
struct TYPE_7__ {void* bKeyValid; } ;
struct TYPE_9__ {int dwGTKeyIndex; scalar_t__ bInUse; TYPE_2__* GroupKey; TYPE_1__ PairwiseKey; int abyBSSID; } ;
struct TYPE_8__ {void* bKeyValid; } ;
typedef int PVOID ;
typedef TYPE_4__* PSKeyManagement ;
typedef int PSDevice ;
typedef int PBYTE ;
typedef int DWORD ;
typedef void* BOOL ;


 void* FALSE ;
 scalar_t__ IS_BROADCAST_ADDRESS (int ) ;
 scalar_t__ IS_ETH_ADDRESS_EQUAL (int ,int ) ;
 int MAX_GROUP_KEY ;
 int MAX_KEY_TABLE ;
 int PAIRWISE_KEY ;
 scalar_t__ TRUE ;
 int s_vCheckKeyTableValid (int ,TYPE_4__*) ;

BOOL KeybRemoveKey (
    PVOID pDeviceHandler,
    PSKeyManagement pTable,
    PBYTE pbyBSSID,
    DWORD dwKeyIndex
    )
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;
    int i;
    BOOL bReturnValue = FALSE;

    if (IS_BROADCAST_ADDRESS(pbyBSSID)) {

        if ((dwKeyIndex & PAIRWISE_KEY) != 0) {
            for (i=0;i<MAX_KEY_TABLE;i++) {
                pTable->KeyTable[i].PairwiseKey.bKeyValid = FALSE;
            }
            bReturnValue = TRUE;
        }
        else if ((dwKeyIndex & 0x000000FF) < MAX_GROUP_KEY) {
            for (i=0;i<MAX_KEY_TABLE;i++) {
                pTable->KeyTable[i].GroupKey[dwKeyIndex & 0x000000FF].bKeyValid = FALSE;
                if ((dwKeyIndex & 0x7FFFFFFF) == (pTable->KeyTable[i].dwGTKeyIndex & 0x7FFFFFFF)) {

                    pTable->KeyTable[i].dwGTKeyIndex = 0;
                }
            }
            bReturnValue = TRUE;
        }
        else {
            bReturnValue = FALSE;
        }

    } else {
        for (i=0;i<MAX_KEY_TABLE;i++) {
            if ( (pTable->KeyTable[i].bInUse == TRUE) &&
                 IS_ETH_ADDRESS_EQUAL(pTable->KeyTable[i].abyBSSID,pbyBSSID)) {

                if ((dwKeyIndex & PAIRWISE_KEY) != 0) {
                    pTable->KeyTable[i].PairwiseKey.bKeyValid = FALSE;
                    bReturnValue = TRUE;
                    break;
                }
                else if ((dwKeyIndex & 0x000000FF) < MAX_GROUP_KEY) {
                    pTable->KeyTable[i].GroupKey[dwKeyIndex & 0x000000FF].bKeyValid = FALSE;
                    if ((dwKeyIndex & 0x7FFFFFFF) == (pTable->KeyTable[i].dwGTKeyIndex & 0x7FFFFFFF)) {

                        pTable->KeyTable[i].dwGTKeyIndex = 0;
                    }
                    bReturnValue = TRUE;
                    break;
                }
                else {
                    bReturnValue = FALSE;
                    break;
                }
            }
        }
        bReturnValue = TRUE;
    }

    s_vCheckKeyTableValid(pDevice,pTable);
    return bReturnValue;


}
