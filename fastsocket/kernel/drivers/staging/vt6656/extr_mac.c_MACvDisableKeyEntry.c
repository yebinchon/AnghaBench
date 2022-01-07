
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int UINT ;
typedef int PSDevice ;
typedef scalar_t__ BYTE ;


 int CONTROLnsRequestOut (int ,int ,int ,int ,int,scalar_t__*) ;
 int MESSAGE_TYPE_CLRKEYENTRY ;
 int MISCFIFO_KEYENTRYSIZE ;
 int MISCFIFO_KEYETRY0 ;

void MACvDisableKeyEntry (PSDevice pDevice, UINT uEntryIdx)
{
WORD wOffset;
BYTE byData;


    byData = (BYTE) uEntryIdx;

    wOffset = MISCFIFO_KEYETRY0;
    wOffset += (uEntryIdx * MISCFIFO_KEYENTRYSIZE);






    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_CLRKEYENTRY,
                        0,
                        0,
                        1,
                        &byData
                        );
}
