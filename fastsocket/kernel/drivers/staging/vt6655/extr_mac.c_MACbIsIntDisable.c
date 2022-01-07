
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD_PTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ MAC_REG_IMR ;
 int TRUE ;
 int VNSvInPortD (scalar_t__,scalar_t__*) ;

BOOL MACbIsIntDisable (DWORD_PTR dwIoBase)
{
    DWORD dwData;

    VNSvInPortD(dwIoBase + MAC_REG_IMR, &dwData);
    if (dwData != 0)
        return FALSE;

    return TRUE;
}
