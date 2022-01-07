
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ byRFType; scalar_t__ byBBType; int* abyBBVGA; int byPacketType; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef int BYTE ;


 scalar_t__ BB_TYPE_11A ;
 scalar_t__ BB_TYPE_11B ;
 scalar_t__ BB_TYPE_11G ;
 int CARDbyGetPktType (TYPE_1__*) ;
 int CARDvSetRSPINF (TYPE_1__*,int ) ;
 int ControlvWriteByte (TYPE_1__*,int ,int,int) ;
 int MACvSetBBType (TYPE_1__*,scalar_t__) ;
 int MESSAGE_REQUEST_BBREG ;
 scalar_t__ RF_AIROHA7230 ;
 int vUpdateIFS (TYPE_1__*) ;

void CARDvSetBSSMode (PVOID pDeviceHandler)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;


    if( (pDevice->byRFType == RF_AIROHA7230 ) && (pDevice->byBBType == BB_TYPE_11A) )
    {
        MACvSetBBType(pDevice, BB_TYPE_11G);
    }
    else
    {
        MACvSetBBType(pDevice, pDevice->byBBType);
    }
    pDevice->byPacketType = CARDbyGetPktType(pDevice);

    if (pDevice->byBBType == BB_TYPE_11A) {
        ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x88, 0x03);
    } else if (pDevice->byBBType == BB_TYPE_11B) {
        ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x88, 0x02);
    } else if (pDevice->byBBType == BB_TYPE_11G) {
        ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x88, 0x08);
    }

    vUpdateIFS(pDevice);
    CARDvSetRSPINF(pDevice, (BYTE)pDevice->byBBType);

    if ( pDevice->byBBType == BB_TYPE_11A ) {

        if (pDevice->byRFType == RF_AIROHA7230) {
            pDevice->abyBBVGA[0] = 0x20;
            ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0xE7, pDevice->abyBBVGA[0]);
        }
        pDevice->abyBBVGA[2] = 0x10;
        pDevice->abyBBVGA[3] = 0x10;
    } else {

        if (pDevice->byRFType == RF_AIROHA7230) {
            pDevice->abyBBVGA[0] = 0x1C;
            ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0xE7, pDevice->abyBBVGA[0]);
        }
        pDevice->abyBBVGA[2] = 0x0;
        pDevice->abyBBVGA[3] = 0x0;
    }
}
