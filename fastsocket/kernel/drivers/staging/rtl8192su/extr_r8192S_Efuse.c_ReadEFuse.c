
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int EFUSE_Read1Byte (struct net_device*,int) ;
 int ReadEFuseByte (struct net_device*,int,int*) ;
 int printk (char*) ;

void
ReadEFuse(struct net_device* dev, u16 _offset, u16 _size_byte, u8 *pbuf)
{

 u8 efuseTbl[128];
 u8 rtemp8[1];
 u16 eFuse_Addr = 0;
 u8 offset, wren;
 u16 i, j;
 u16 eFuseWord[16][4];

 for(i=0; i<16; i++)
  for(j=0; j<4; j++)
   eFuseWord[i][j]=0xFF;


 if((_offset + _size_byte)>128)
 {

  printk("ReadEFuse(): Invalid offset with read bytes!!\n");
  return;
 }


 for (i = 0; i < 128; i++)
  efuseTbl[i] = 0xFF;




 rtemp8[0] = EFUSE_Read1Byte(dev, eFuse_Addr);

 if(*rtemp8 != 0xFF) eFuse_Addr++;
 while((*rtemp8 != 0xFF) && (eFuse_Addr < 512)){
  offset = ((*rtemp8 >> 4) & 0x0f);
  if(offset <= 0x0F){
   wren = (*rtemp8 & 0x0f);
   for(i=0; i<4; i++){
    if(!(wren & 0x01)){



     rtemp8[0] = EFUSE_Read1Byte(dev, eFuse_Addr); eFuse_Addr++;

     eFuseWord[offset][i] = (*rtemp8 & 0xff);
     if(eFuse_Addr >= 512) break;



     rtemp8[0] = EFUSE_Read1Byte(dev, eFuse_Addr); eFuse_Addr++;

     eFuseWord[offset][i] |= (((u16)*rtemp8 << 8) & 0xff00);
     if(eFuse_Addr >= 512) break;
    }
    wren >>= 1;
   }
  }



  rtemp8[0] = EFUSE_Read1Byte(dev, eFuse_Addr); eFuse_Addr++;

  if(*rtemp8 != 0xFF && (eFuse_Addr < 512)) eFuse_Addr++;
 }

 for(i=0; i<16; i++){
  for(j=0; j<4; j++){
   efuseTbl[(i*8)+(j*2)]=(eFuseWord[i][j] & 0xff);
   efuseTbl[(i*8)+((j*2)+1)]=((eFuseWord[i][j] >> 8) & 0xff);
  }
 }
 for(i=0; i<_size_byte; i++)
  pbuf[i] = efuseTbl[_offset+i];
}
