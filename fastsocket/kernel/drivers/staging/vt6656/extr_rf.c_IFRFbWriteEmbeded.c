
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSDevice ;
typedef int DWORD ;
typedef scalar_t__ BYTE ;
typedef int BOOL ;


 int CONTROLnsRequestOut (int ,int ,int ,int ,int,scalar_t__*) ;
 int MESSAGE_TYPE_WRITE_IFRF ;
 int TRUE ;

BOOL IFRFbWriteEmbeded (PSDevice pDevice, DWORD dwData)
{
    BYTE pbyData[4];

    pbyData[0] = (BYTE)dwData;
    pbyData[1] = (BYTE)(dwData>>8);
    pbyData[2] = (BYTE)(dwData>>16);
    pbyData[3] = (BYTE)(dwData>>24);
    CONTROLnsRequestOut(pDevice,
                    MESSAGE_TYPE_WRITE_IFRF,
                    0,
                    0,
                    4,
                    pbyData
                        );


    return TRUE;
}
