
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSDevice ;
typedef int BYTE ;


 int CONTROLnsRequestOut (int ,int ,int ,int ,int,int *) ;
 int MESSAGE_TYPE_WRITE ;

void ControlvWriteByte(PSDevice pDevice, BYTE byRegType, BYTE byRegOfs, BYTE byData)
{
BYTE byData1;

    byData1 = byData;

    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_WRITE,
                        byRegOfs,
                        byRegType,
                        1,
                        &byData1
                        );

}
