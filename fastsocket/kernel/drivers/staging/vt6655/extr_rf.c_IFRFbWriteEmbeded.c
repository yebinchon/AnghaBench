
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;
typedef scalar_t__ DWORD_PTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int IFREGCTL_DONE ;
 scalar_t__ MAC_REG_IFREGCTL ;
 int TRUE ;
 int VNSvInPortD (scalar_t__,int*) ;
 int VNSvOutPortD (scalar_t__,int) ;
 scalar_t__ W_MAX_TIMEOUT ;

BOOL IFRFbWriteEmbeded (DWORD_PTR dwIoBase, DWORD dwData)
{
    WORD ww;
    DWORD dwValue;

    VNSvOutPortD(dwIoBase + MAC_REG_IFREGCTL, dwData);


    for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
        VNSvInPortD(dwIoBase + MAC_REG_IFREGCTL, &dwValue);
        if (dwValue & IFREGCTL_DONE)
            break;
    }

    if (ww == W_MAX_TIMEOUT) {

        return FALSE;
    }
    return TRUE;
}
