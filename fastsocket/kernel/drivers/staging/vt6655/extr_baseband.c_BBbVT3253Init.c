
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ byRFType; scalar_t__ byLocalID; int* abyBBVGA; int* ldBmThreshold; int bUpdateBBVGA; scalar_t__ PortOffset; } ;
typedef TYPE_1__* PSDevice ;
typedef scalar_t__ DWORD_PTR ;
typedef scalar_t__ BYTE ;
typedef int BOOL ;


 int BBbWriteEmbeded (scalar_t__,int,int) ;
 int BIT0 ;
 int CB_VT3253B0_AGC ;
 int CB_VT3253B0_AGC_FOR_RFMD2959 ;
 int CB_VT3253B0_INIT_FOR_AIROHA2230 ;
 int CB_VT3253B0_INIT_FOR_RFMD ;
 int CB_VT3253B0_INIT_FOR_UW2451 ;
 int CB_VT3253_INIT_FOR_RFMD ;
 int FALSE ;
 scalar_t__ MAC_REG_ITRTMSET ;
 int MAC_REG_PAPEDELAY ;
 int MACvRegBitsOn (scalar_t__,int ,int ) ;
 int MACvSetRFLE_LatchBase (scalar_t__) ;
 scalar_t__ REV_ID_VT3253_A1 ;
 scalar_t__ RF_AIROHA ;
 scalar_t__ RF_AIROHA7230 ;
 scalar_t__ RF_AL2230S ;
 scalar_t__ RF_RFMD2959 ;
 scalar_t__ RF_UW2451 ;
 scalar_t__ RF_UW2452 ;
 scalar_t__ RF_VT3226 ;
 int TRUE ;
 int VNSvOutPortB (scalar_t__,int) ;
 int VNSvOutPortD (scalar_t__,int) ;
 int** byVT3253B0_AGC ;
 int** byVT3253B0_AGC4_RFMD2959 ;
 int** byVT3253B0_AIROHA2230 ;
 int** byVT3253B0_RFMD ;
 int** byVT3253B0_UW2451 ;
 int** byVT3253InitTab_RFMD ;

BOOL BBbVT3253Init (PSDevice pDevice)
{
    BOOL bResult = TRUE;
    int ii;
    DWORD_PTR dwIoBase = pDevice->PortOffset;
    BYTE byRFType = pDevice->byRFType;
    BYTE byLocalID = pDevice->byLocalID;

    if (byRFType == RF_RFMD2959) {
        if (byLocalID <= REV_ID_VT3253_A1) {
            for (ii = 0; ii < CB_VT3253_INIT_FOR_RFMD; ii++) {
                bResult &= BBbWriteEmbeded(dwIoBase,byVT3253InitTab_RFMD[ii][0],byVT3253InitTab_RFMD[ii][1]);
            }
        } else {
            for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++) {
                bResult &= BBbWriteEmbeded(dwIoBase,byVT3253B0_RFMD[ii][0],byVT3253B0_RFMD[ii][1]);
            }
            for (ii = 0; ii < CB_VT3253B0_AGC_FOR_RFMD2959; ii++) {
             bResult &= BBbWriteEmbeded(dwIoBase,byVT3253B0_AGC4_RFMD2959[ii][0],byVT3253B0_AGC4_RFMD2959[ii][1]);
            }
            VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23);
            MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT0);
        }
        pDevice->abyBBVGA[0] = 0x18;
        pDevice->abyBBVGA[1] = 0x0A;
        pDevice->abyBBVGA[2] = 0x0;
        pDevice->abyBBVGA[3] = 0x0;
        pDevice->ldBmThreshold[0] = -70;
        pDevice->ldBmThreshold[1] = -50;
        pDevice->ldBmThreshold[2] = 0;
        pDevice->ldBmThreshold[3] = 0;
    } else if ((byRFType == RF_AIROHA) || (byRFType == RF_AL2230S) ) {
        for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++) {
         bResult &= BBbWriteEmbeded(dwIoBase,byVT3253B0_AIROHA2230[ii][0],byVT3253B0_AIROHA2230[ii][1]);
     }
        for (ii = 0; ii < CB_VT3253B0_AGC; ii++) {
         bResult &= BBbWriteEmbeded(dwIoBase,byVT3253B0_AGC[ii][0],byVT3253B0_AGC[ii][1]);
     }
        pDevice->abyBBVGA[0] = 0x1C;
        pDevice->abyBBVGA[1] = 0x10;
        pDevice->abyBBVGA[2] = 0x0;
        pDevice->abyBBVGA[3] = 0x0;
        pDevice->ldBmThreshold[0] = -70;
        pDevice->ldBmThreshold[1] = -48;
        pDevice->ldBmThreshold[2] = 0;
        pDevice->ldBmThreshold[3] = 0;
    } else if (byRFType == RF_UW2451) {
        for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++) {
             bResult &= BBbWriteEmbeded(dwIoBase,byVT3253B0_UW2451[ii][0],byVT3253B0_UW2451[ii][1]);
     }
        for (ii = 0; ii < CB_VT3253B0_AGC; ii++) {
         bResult &= BBbWriteEmbeded(dwIoBase,byVT3253B0_AGC[ii][0],byVT3253B0_AGC[ii][1]);
     }
        VNSvOutPortB(dwIoBase + MAC_REG_ITRTMSET, 0x23);
        MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT0);

        pDevice->abyBBVGA[0] = 0x14;
        pDevice->abyBBVGA[1] = 0x0A;
        pDevice->abyBBVGA[2] = 0x0;
        pDevice->abyBBVGA[3] = 0x0;
        pDevice->ldBmThreshold[0] = -60;
        pDevice->ldBmThreshold[1] = -50;
        pDevice->ldBmThreshold[2] = 0;
        pDevice->ldBmThreshold[3] = 0;
    } else if (byRFType == RF_UW2452) {
        for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++) {
            bResult &= BBbWriteEmbeded(dwIoBase,byVT3253B0_UW2451[ii][0],byVT3253B0_UW2451[ii][1]);
     }





        bResult &= BBbWriteEmbeded(dwIoBase,0xd7,0x06);


        bResult &= BBbWriteEmbeded(dwIoBase,0x90,0x20);
        bResult &= BBbWriteEmbeded(dwIoBase,0x97,0xeb);



        bResult &= BBbWriteEmbeded(dwIoBase,0xa6,0x00);
        bResult &= BBbWriteEmbeded(dwIoBase,0xa8,0x30);

        bResult &= BBbWriteEmbeded(dwIoBase,0xb0,0x58);

        for (ii = 0; ii < CB_VT3253B0_AGC; ii++) {
         bResult &= BBbWriteEmbeded(dwIoBase,byVT3253B0_AGC[ii][0],byVT3253B0_AGC[ii][1]);
     }



        pDevice->abyBBVGA[0] = 0x14;
        pDevice->abyBBVGA[1] = 0x0A;
        pDevice->abyBBVGA[2] = 0x0;
        pDevice->abyBBVGA[3] = 0x0;
        pDevice->ldBmThreshold[0] = -60;
        pDevice->ldBmThreshold[1] = -50;
        pDevice->ldBmThreshold[2] = 0;
        pDevice->ldBmThreshold[3] = 0;


    } else if (byRFType == RF_VT3226) {
        for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++) {
         bResult &= BBbWriteEmbeded(dwIoBase,byVT3253B0_AIROHA2230[ii][0],byVT3253B0_AIROHA2230[ii][1]);
     }
        for (ii = 0; ii < CB_VT3253B0_AGC; ii++) {
         bResult &= BBbWriteEmbeded(dwIoBase,byVT3253B0_AGC[ii][0],byVT3253B0_AGC[ii][1]);
     }
        pDevice->abyBBVGA[0] = 0x1C;
        pDevice->abyBBVGA[1] = 0x10;
        pDevice->abyBBVGA[2] = 0x0;
        pDevice->abyBBVGA[3] = 0x0;
        pDevice->ldBmThreshold[0] = -70;
        pDevice->ldBmThreshold[1] = -48;
        pDevice->ldBmThreshold[2] = 0;
        pDevice->ldBmThreshold[3] = 0;

        MACvSetRFLE_LatchBase(dwIoBase);

    } else if (byRFType == RF_AIROHA7230) {
        for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++) {
         bResult &= BBbWriteEmbeded(dwIoBase,byVT3253B0_AIROHA2230[ii][0],byVT3253B0_AIROHA2230[ii][1]);
     }







        bResult &= BBbWriteEmbeded(dwIoBase,0xd7,0x06);


        for (ii = 0; ii < CB_VT3253B0_AGC; ii++) {
         bResult &= BBbWriteEmbeded(dwIoBase,byVT3253B0_AGC[ii][0],byVT3253B0_AGC[ii][1]);
     }
        pDevice->abyBBVGA[0] = 0x1C;
        pDevice->abyBBVGA[1] = 0x10;
        pDevice->abyBBVGA[2] = 0x0;
        pDevice->abyBBVGA[3] = 0x0;
        pDevice->ldBmThreshold[0] = -70;
        pDevice->ldBmThreshold[1] = -48;
        pDevice->ldBmThreshold[2] = 0;
        pDevice->ldBmThreshold[3] = 0;

    } else {

     pDevice->bUpdateBBVGA = FALSE;
        pDevice->abyBBVGA[0] = 0x1C;
    }

    if (byLocalID > REV_ID_VT3253_A1) {
        BBbWriteEmbeded(dwIoBase, 0x04, 0x7F);
        BBbWriteEmbeded(dwIoBase, 0x0D, 0x01);
    }

    return bResult;
}
