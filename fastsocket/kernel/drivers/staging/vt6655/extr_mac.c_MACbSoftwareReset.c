
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;
typedef scalar_t__ DWORD_PTR ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int HOSTCR_SOFTRST ;
 scalar_t__ MAC_REG_HOSTCR ;
 int TRUE ;
 int VNSvInPortB (scalar_t__,int*) ;
 int VNSvOutPortB (scalar_t__,int) ;
 scalar_t__ W_MAX_TIMEOUT ;

BOOL MACbSoftwareReset (DWORD_PTR dwIoBase)
{
    BYTE byData;
    WORD ww;



    VNSvOutPortB(dwIoBase+ MAC_REG_HOSTCR, 0x01);

    for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
        VNSvInPortB(dwIoBase + MAC_REG_HOSTCR, &byData);
        if ( !(byData & HOSTCR_SOFTRST))
            break;
    }
    if (ww == W_MAX_TIMEOUT)
        return FALSE;
    return TRUE;

}
