
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD_PTR ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ MAC_REG_TEST ;
 int TEST_LBEXT ;
 int TEST_LBINT ;
 int TRUE ;
 int VNSvInPortB (scalar_t__,int*) ;

BOOL MACbIsInLoopbackMode (DWORD_PTR dwIoBase)
{
    BYTE byOrgValue;

    VNSvInPortB(dwIoBase + MAC_REG_TEST, &byOrgValue);
    if (byOrgValue & (TEST_LBINT | TEST_LBEXT))
        return TRUE;
    return FALSE;
}
