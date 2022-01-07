
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSDevice ;
typedef int * PBYTE ;
typedef int NTSTATUS ;
typedef int BYTE ;


 int CONTROLnsRequestIn (int ,int ,int ,int ,int,int *) ;
 int MESSAGE_TYPE_READ ;

void ControlvReadByte(PSDevice pDevice, BYTE byRegType, BYTE byRegOfs, PBYTE pbyData)
{
NTSTATUS ntStatus;
BYTE byData1;


    ntStatus = CONTROLnsRequestIn(pDevice,
                                    MESSAGE_TYPE_READ,
                                    byRegOfs,
                                    byRegType,
                                    1,
                                    &byData1);

    *pbyData = byData1;

}
