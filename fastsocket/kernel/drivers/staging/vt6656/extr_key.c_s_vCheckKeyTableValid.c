
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int VOID ;
struct TYPE_9__ {TYPE_3__* KeyTable; } ;
struct TYPE_6__ {scalar_t__ bKeyValid; } ;
struct TYPE_8__ {scalar_t__ bInUse; scalar_t__ bSoftWEP; scalar_t__ wKeyCtl; TYPE_2__* GroupKey; TYPE_1__ PairwiseKey; } ;
struct TYPE_7__ {scalar_t__ bKeyValid; } ;
typedef int PVOID ;
typedef TYPE_4__* PSKeyManagement ;
typedef int PSDevice ;
typedef scalar_t__ BYTE ;


 int CONTROLnsRequestOut (int ,int ,int ,int ,scalar_t__,scalar_t__*) ;
 scalar_t__ FALSE ;
 int MAX_KEY_TABLE ;
 int MESSAGE_TYPE_CLRKEYENTRY ;
 scalar_t__ TRUE ;

__attribute__((used)) static VOID
s_vCheckKeyTableValid (PVOID pDeviceHandler, PSKeyManagement pTable)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;
    int i;
    WORD wLength = 0;
    BYTE pbyData[MAX_KEY_TABLE];

    for (i=0;i<MAX_KEY_TABLE;i++) {
        if ((pTable->KeyTable[i].bInUse == TRUE) &&
            (pTable->KeyTable[i].PairwiseKey.bKeyValid == FALSE) &&
            (pTable->KeyTable[i].GroupKey[0].bKeyValid == FALSE) &&
            (pTable->KeyTable[i].GroupKey[1].bKeyValid == FALSE) &&
            (pTable->KeyTable[i].GroupKey[2].bKeyValid == FALSE) &&
            (pTable->KeyTable[i].GroupKey[3].bKeyValid == FALSE)
            ) {

            pTable->KeyTable[i].bInUse = FALSE;
            pTable->KeyTable[i].wKeyCtl = 0;
            pTable->KeyTable[i].bSoftWEP = FALSE;
            pbyData[wLength++] = (BYTE) i;

        }
    }
    if ( wLength != 0 ) {
        CONTROLnsRequestOut(pDevice,
                            MESSAGE_TYPE_CLRKEYENTRY,
                            0,
                            0,
                            wLength,
                            pbyData
                            );
    }

}
