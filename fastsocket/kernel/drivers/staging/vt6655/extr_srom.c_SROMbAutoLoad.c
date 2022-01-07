
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD_PTR ;
typedef int BYTE ;
typedef int BOOL ;


 int CB_EEPROM_READBYTE_WAIT ;
 int EEP_MAX_CONTEXT_SIZE ;
 int FALSE ;
 int I2MCFG_NORETRY ;
 int I2MCSR_AUTOLD ;
 scalar_t__ MAC_REG_I2MCFG ;
 scalar_t__ MAC_REG_I2MCSR ;
 int MACvRegBitsOn (scalar_t__,scalar_t__,int) ;
 int MACvTimer0MicroSDelay (scalar_t__,int ) ;
 int TRUE ;
 int VNSvInPortB (scalar_t__,int*) ;
 int VNSvOutPortB (scalar_t__,int) ;

BOOL SROMbAutoLoad (DWORD_PTR dwIoBase)
{
    BYTE byWait;
    int ii;

    BYTE byOrg;

    VNSvInPortB(dwIoBase + MAC_REG_I2MCFG, &byOrg);

    VNSvOutPortB(dwIoBase + MAC_REG_I2MCFG, (byOrg | I2MCFG_NORETRY));

    MACvRegBitsOn(dwIoBase, MAC_REG_I2MCSR, I2MCSR_AUTOLD);


    for (ii = 0; ii < EEP_MAX_CONTEXT_SIZE; ii++) {
        MACvTimer0MicroSDelay(dwIoBase, CB_EEPROM_READBYTE_WAIT);
        VNSvInPortB(dwIoBase + MAC_REG_I2MCSR, &byWait);
        if ( !(byWait & I2MCSR_AUTOLD))
            break;
    }

    VNSvOutPortB(dwIoBase + MAC_REG_I2MCFG, byOrg);

    if (ii == EEP_MAX_CONTEXT_SIZE)
        return FALSE;
    return TRUE;
}
