
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD_PTR ;
typedef int BOOL ;


 int BBvPowerSaveModeOFF (scalar_t__) ;
 int BBvPowerSaveModeON (scalar_t__) ;
 int BY_AL7230_REG_LEN ;
 int CB_AL7230_INIT_SEQ ;
 scalar_t__ IFREGCTL_REGW ;
 int IFRFbWriteEmbeded (scalar_t__,scalar_t__) ;
 scalar_t__ MAC_REG_PSPWRSIG ;
 scalar_t__ MAC_REG_SOFTPWRCTL ;
 int MACvTimer0MicroSDelay (scalar_t__,int) ;
 int MACvWordRegBitsOn (scalar_t__,scalar_t__,int) ;
 int PSSIG_WPE2 ;
 int PSSIG_WPE3 ;
 int SOFTPWRCTL_SWPE2 ;
 int SOFTPWRCTL_SWPE3 ;
 int SOFTPWRCTL_SWPECTI ;
 int SOFTPWRCTL_TXPEINV ;
 int TRUE ;
 int VNSvOutPortB (scalar_t__,int) ;
 scalar_t__* dwAL7230InitTable ;

BOOL s_bAL7230Init (DWORD_PTR dwIoBase)
{
    int ii;
    BOOL bResult;

    bResult = TRUE;


    VNSvOutPortB(dwIoBase + MAC_REG_SOFTPWRCTL, 0);

    MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI |
                                                     SOFTPWRCTL_TXPEINV));
    BBvPowerSaveModeOFF(dwIoBase);

    for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++)
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTable[ii]);


    MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);


    MACvTimer0MicroSDelay(dwIoBase, 150);
    bResult &= IFRFbWriteEmbeded(dwIoBase, (0x9ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW));
    MACvTimer0MicroSDelay(dwIoBase, 30);
    bResult &= IFRFbWriteEmbeded(dwIoBase, (0x3ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW));
    MACvTimer0MicroSDelay(dwIoBase, 30);
    bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]);

    MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3 |
                                                     SOFTPWRCTL_SWPE2 |
                                                     SOFTPWRCTL_SWPECTI |
                                                     SOFTPWRCTL_TXPEINV));

    BBvPowerSaveModeON(dwIoBase);



    VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2));

    return bResult;
}
