
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wb35_reg {void* BB48; void* BB4C; } ;
struct hw_data {int phy_type; struct wb35_reg reg; } ;


 void* BB48_DEFAULT_AL2230_11B ;
 void* BB48_DEFAULT_AL2230_11G ;
 void* BB48_DEFAULT_WB242_11B ;
 void* BB48_DEFAULT_WB242_11G ;
 void* BB4C_DEFAULT_AL2230_11B ;
 void* BB4C_DEFAULT_AL2230_11G ;
 void* BB4C_DEFAULT_WB242_11B ;
 void* BB4C_DEFAULT_WB242_11G ;



 int Wb35Reg_Write (struct hw_data*,int,void*) ;

void BBProcessor_RateChanging( struct hw_data * pHwData, u8 rate )
{
 struct wb35_reg *reg = &pHwData->reg;
 unsigned char Is11bRate;

 Is11bRate = (rate % 6) ? 1 : 0;
 switch( pHwData->phy_type )
 {
  case 130:
  case 129:
   if( Is11bRate )
   {
    if( (reg->BB48 != BB48_DEFAULT_AL2230_11B) &&
     (reg->BB4C != BB4C_DEFAULT_AL2230_11B) )
    {
     Wb35Reg_Write( pHwData, 0x1048, BB48_DEFAULT_AL2230_11B );
     Wb35Reg_Write( pHwData, 0x104c, BB4C_DEFAULT_AL2230_11B );
    }
   }
   else
   {
    if( (reg->BB48 != BB48_DEFAULT_AL2230_11G) &&
     (reg->BB4C != BB4C_DEFAULT_AL2230_11G) )
    {
     Wb35Reg_Write( pHwData, 0x1048, BB48_DEFAULT_AL2230_11G );
     Wb35Reg_Write( pHwData, 0x104c, BB4C_DEFAULT_AL2230_11G );
    }
   }
   break;

  case 128:
   if( Is11bRate )
   {
    if( (reg->BB48 != BB48_DEFAULT_WB242_11B) &&
     (reg->BB4C != BB4C_DEFAULT_WB242_11B) )
    {
     reg->BB48 = BB48_DEFAULT_WB242_11B;
     reg->BB4C = BB4C_DEFAULT_WB242_11B;
     Wb35Reg_Write( pHwData, 0x1048, BB48_DEFAULT_WB242_11B );
     Wb35Reg_Write( pHwData, 0x104c, BB4C_DEFAULT_WB242_11B );
    }
   }
   else
   {
    if( (reg->BB48 != BB48_DEFAULT_WB242_11G) &&
     (reg->BB4C != BB4C_DEFAULT_WB242_11G) )
    {
     reg->BB48 = BB48_DEFAULT_WB242_11G;
     reg->BB4C = BB4C_DEFAULT_WB242_11G;
     Wb35Reg_Write( pHwData, 0x1048, BB48_DEFAULT_WB242_11G );
     Wb35Reg_Write( pHwData, 0x104c, BB4C_DEFAULT_WB242_11G );
    }
   }
   break;
 }
}
