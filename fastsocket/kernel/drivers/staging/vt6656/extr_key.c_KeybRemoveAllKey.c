
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* KeyTable; } ;
struct TYPE_7__ {scalar_t__ bKeyValid; } ;
struct TYPE_9__ {scalar_t__ bInUse; scalar_t__ dwGTKeyIndex; TYPE_2__* GroupKey; TYPE_1__ PairwiseKey; int abyBSSID; } ;
struct TYPE_8__ {scalar_t__ bKeyValid; } ;
typedef int PVOID ;
typedef TYPE_4__* PSKeyManagement ;
typedef int PSDevice ;
typedef int PBYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ IS_ETH_ADDRESS_EQUAL (int ,int ) ;
 int MAX_GROUP_KEY ;
 int MAX_KEY_TABLE ;
 scalar_t__ TRUE ;
 int s_vCheckKeyTableValid (int ,TYPE_4__*) ;

BOOL KeybRemoveAllKey (
    PVOID pDeviceHandler,
    PSKeyManagement pTable,
    PBYTE pbyBSSID
    )
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;
    int i,u;

    for (i=0;i<MAX_KEY_TABLE;i++) {
        if ((pTable->KeyTable[i].bInUse == TRUE) &&
            IS_ETH_ADDRESS_EQUAL(pTable->KeyTable[i].abyBSSID,pbyBSSID)) {
            pTable->KeyTable[i].PairwiseKey.bKeyValid = FALSE;
            for(u=0;u<MAX_GROUP_KEY;u++) {
                pTable->KeyTable[i].GroupKey[u].bKeyValid = FALSE;
            }
            pTable->KeyTable[i].dwGTKeyIndex = 0;
            s_vCheckKeyTableValid(pDevice, pTable);
            return (TRUE);
        }
    }
    return (FALSE);
}
