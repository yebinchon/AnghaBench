
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw_data {int phy_type; } ;


 int BitReverse (int,int) ;
 int Wb35Reg_WriteSync (struct hw_data*,int,int) ;

void phy_set_rf_data( struct hw_data * pHwData, u32 index, u32 value )
{
   u32 ltmp=0;

    switch( pHwData->phy_type )
 {
  case 134:
  case 130:
   ltmp = (1 << 31) | (0 << 30) | (18 << 24) | BitReverse( value, 18 );
   break;

  case 133:
   ltmp = (1 << 31) | (0 << 30) | (18 << 24) | BitReverse( value, 18 );
   break;

  case 132:
   ltmp = (1 << 31) | (0 << 30) | (18 << 24) | BitReverse( value, 18 );
   break;

  case 131:
   ltmp = (1 << 31) | (0 << 30) | (18 << 24) | BitReverse( value, 18 );
   break;

  case 137:
  case 136:
   ltmp = (1 << 31) | (0 << 30) | (20 << 24) | BitReverse( value, 20 );
   break;

  case 135:
   ltmp = (1 << 31) | (0 << 30) | (24 << 24) | (value&0xffffff);
   break;

  case 129:
  case 128:
   ltmp = (1 << 31) | (0 << 30) | (24 << 24) | BitReverse( value, 24 );
   break;
 }

 Wb35Reg_WriteSync( pHwData, 0x0864, ltmp );
}
