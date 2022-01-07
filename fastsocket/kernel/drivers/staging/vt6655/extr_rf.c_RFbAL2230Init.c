
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD_PTR ;
typedef int BOOL ;


 int BY_AL2230_REG_LEN ;
 int CB_AL2230_INIT_SEQ ;
 scalar_t__ IFREGCTL_REGW ;
 int IFRFbWriteEmbeded (scalar_t__,scalar_t__) ;
 scalar_t__ MAC_REG_PSPWRSIG ;
 scalar_t__ MAC_REG_SOFTPWRCTL ;
 int MACvTimer0MicroSDelay (scalar_t__,int) ;
 int MACvWordRegBitsOff (scalar_t__,scalar_t__,int) ;
 int MACvWordRegBitsOn (scalar_t__,scalar_t__,int) ;
 int PSSIG_WPE2 ;
 int PSSIG_WPE3 ;
 int SOFTPWRCTL_SWPE2 ;
 int SOFTPWRCTL_SWPE3 ;
 int SOFTPWRCTL_SWPECTI ;
 int SOFTPWRCTL_TXPEINV ;
 int TRUE ;
 int VNSvOutPortB (scalar_t__,int) ;
 scalar_t__* dwAL2230InitTable ;

BOOL RFbAL2230Init (DWORD_PTR dwIoBase)
{
    int ii;
    BOOL bResult;

    bResult = TRUE;


    VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0);

    MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI |
                                                     SOFTPWRCTL_TXPEINV));



    MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);





    IFRFbWriteEmbeded(dwIoBase, (0x07168700+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW));


    for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL2230InitTable[ii]);

MACvTimer0MicroSDelay(dwIoBase, 30);


    MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);

    MACvTimer0MicroSDelay(dwIoBase, 150);
    bResult &= IFRFbWriteEmbeded(dwIoBase, (0x00d80f00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW));
    MACvTimer0MicroSDelay(dwIoBase, 30);
    bResult &= IFRFbWriteEmbeded(dwIoBase, (0x00780f00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW));
    MACvTimer0MicroSDelay(dwIoBase, 30);
    bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL2230InitTable[CB_AL2230_INIT_SEQ-1]);

    MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 |
                                                     SOFTPWRCTL_SWPE2 |
                                                     SOFTPWRCTL_SWPECTI |
                                                     SOFTPWRCTL_TXPEINV));


    VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2));

    return bResult;
}
