
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct wb35_reg {int M00_MacControl; int M24_MacControl; int M2C_MacControl; int M38_MacControl; int M3C_MacControl; int M40_MacControl; int M44_MacControl; int M48_MacControl; int M4C_MacStatus; int M60_MacControl; int M68_MacControl; int M98_MacControl; } ;
struct hw_data {int cwmin; int cwmax; int AID; int slot_time_select; int BeaconPeriod; int ProbeDelay; scalar_t__ bssid; struct wb35_reg reg; } ;


 int DEFAULT_AID ;
 int DEFAULT_ATIMWD ;
 int DEFAULT_BEACON_INTERVAL ;
 int DEFAULT_CWMAX ;
 int DEFAULT_CWMIN ;
 int DEFAULT_DIFST ;
 int DEFAULT_DTIM_ALERT_TIME ;
 int DEFAULT_EIFST ;
 int DEFAULT_LONG_RETRY_LIMIT ;
 int DEFAULT_MAC_POWER_STATE ;
 int DEFAULT_MAX_TX_MSDU_LIFE_TIME ;
 int DEFAULT_OSIFST ;
 int DEFAULT_PIFST ;
 int DEFAULT_PROBE_DELAY_TIME ;
 int DEFAULT_PROTOCOL_VERSION ;
 int DEFAULT_RATE_RETRY_LIMIT ;
 int DEFAULT_SHORT_RETRY_LIMIT ;
 int DEFAULT_SIFST ;
 int DEFAULT_SLOT_TIME ;
 int Wb35Reg_WriteSync (struct hw_data*,int,int) ;

void Mxx_initial( struct hw_data * pHwData )
{
 struct wb35_reg *reg = &pHwData->reg;
 u32 tmp;
 u32 pltmp[11];
 u16 i;
 reg->M00_MacControl = 0x80000000;



 reg->M24_MacControl = 0x08040042;
 pltmp[0] = reg->M24_MacControl;

 pltmp[1] = 0;


 pHwData->cwmin = DEFAULT_CWMIN;
 pHwData->cwmax = DEFAULT_CWMAX;
 reg->M2C_MacControl = DEFAULT_CWMIN << 10;
 reg->M2C_MacControl |= DEFAULT_CWMAX;
 pltmp[2] = reg->M2C_MacControl;


 pltmp[3] = *(u32 *)pHwData->bssid;


 pHwData->AID = DEFAULT_AID;
 tmp = *(u16 *)(pHwData->bssid+4);
 tmp |= DEFAULT_AID << 16;
 pltmp[4] = tmp;


 reg->M38_MacControl = (DEFAULT_RATE_RETRY_LIMIT<<8) | (DEFAULT_LONG_RETRY_LIMIT << 4) | DEFAULT_SHORT_RETRY_LIMIT;
 pltmp[5] = reg->M38_MacControl;


 tmp = (DEFAULT_PIFST << 26) | (DEFAULT_EIFST << 16) | (DEFAULT_DIFST << 8) | (DEFAULT_SIFST << 4) | DEFAULT_OSIFST ;
 reg->M3C_MacControl = tmp;
 pltmp[6] = tmp;


 pHwData->slot_time_select = DEFAULT_SLOT_TIME;
 tmp = (DEFAULT_ATIMWD << 16) | DEFAULT_SLOT_TIME;
 reg->M40_MacControl = tmp;
 pltmp[7] = tmp;


 tmp = DEFAULT_MAX_TX_MSDU_LIFE_TIME << 10;
 reg->M44_MacControl = tmp;
 pltmp[8] = tmp;


 pHwData->BeaconPeriod = DEFAULT_BEACON_INTERVAL;
 pHwData->ProbeDelay = DEFAULT_PROBE_DELAY_TIME;
 tmp = (DEFAULT_BEACON_INTERVAL << 16) | DEFAULT_PROBE_DELAY_TIME;
 reg->M48_MacControl = tmp;
 pltmp[9] = tmp;


 reg->M4C_MacStatus = (DEFAULT_PROTOCOL_VERSION << 30) | (DEFAULT_MAC_POWER_STATE << 28) | (DEFAULT_DTIM_ALERT_TIME << 24);
 pltmp[10] = reg->M4C_MacStatus;



 for( i=0; i<11; i++ )
  Wb35Reg_WriteSync( pHwData, 0x0824 + i*4, pltmp[i] );


 Wb35Reg_WriteSync( pHwData, 0x0860, 0x12481248 );
 reg->M60_MacControl = 0x12481248;


 Wb35Reg_WriteSync( pHwData, 0x0868, 0x00050900 );
 reg->M68_MacControl = 0x00050900;


 Wb35Reg_WriteSync( pHwData, 0x0898, 0xffff8888 );
 reg->M98_MacControl = 0xffff8888;
}
