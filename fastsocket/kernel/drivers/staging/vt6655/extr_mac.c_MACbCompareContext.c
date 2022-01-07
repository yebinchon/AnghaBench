
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* PDWORD ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ DWORD_PTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ MAC_REG_AC0DMAPTR ;
 scalar_t__ MAC_REG_RXDMAPTR0 ;
 scalar_t__ MAC_REG_RXDMAPTR1 ;
 scalar_t__ MAC_REG_TXDMAPTR0 ;
 int TRUE ;
 int VNSvInPortD (scalar_t__,scalar_t__*) ;

BOOL MACbCompareContext (DWORD_PTR dwIoBase, PBYTE pbyCxtBuf)
{
    DWORD dwData;





    VNSvInPortD(dwIoBase + MAC_REG_TXDMAPTR0, &dwData);
    if (dwData != *(PDWORD)(pbyCxtBuf + MAC_REG_TXDMAPTR0)) {
        return FALSE;
    }

    VNSvInPortD(dwIoBase + MAC_REG_AC0DMAPTR, &dwData);
    if (dwData != *(PDWORD)(pbyCxtBuf + MAC_REG_AC0DMAPTR)) {
        return FALSE;
    }

    VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR0, &dwData);
    if (dwData != *(PDWORD)(pbyCxtBuf + MAC_REG_RXDMAPTR0)) {
        return FALSE;
    }

    VNSvInPortD(dwIoBase + MAC_REG_RXDMAPTR1, &dwData);
    if (dwData != *(PDWORD)(pbyCxtBuf + MAC_REG_RXDMAPTR1)) {
        return FALSE;
    }


    return TRUE;
}
