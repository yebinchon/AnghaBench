
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;


 scalar_t__ EFUSE_MAX_SIZE ;
 int FALSE ;
 int PGPKT_DATA_SIZE ;
 int PG_STATE_DATA ;
 int PG_STATE_HEADER ;
 int TRUE ;
 int efuse_CalculateWordCnts (int) ;
 scalar_t__ efuse_OneByteRead (struct net_device*,scalar_t__,int*) ;
 int efuse_WordEnableDataRead (int,int*,int*) ;
 int memset (int*,int,int) ;

__attribute__((used)) static u8
efuse_PgPacketRead( struct net_device* dev, u8 offset, u8 *data)
{
 u8 ReadState = PG_STATE_HEADER;

 bool bContinual = TRUE;
 bool bDataEmpty = TRUE ;

 u8 efuse_data,word_cnts=0;
 u16 efuse_addr = 0;
 u8 hoffset=0,hworden=0;
 u8 tmpidx=0;
 u8 tmpdata[8];

 if(data==((void*)0)) return FALSE;
 if(offset>15) return FALSE;




 memset(data, 0xff, sizeof(u8)*PGPKT_DATA_SIZE);
 memset(tmpdata, 0xff, sizeof(u8)*PGPKT_DATA_SIZE);




 while(bContinual && (efuse_addr < EFUSE_MAX_SIZE) )
 {

  if(ReadState & PG_STATE_HEADER)
  {
   if(efuse_OneByteRead(dev, efuse_addr ,&efuse_data)&&(efuse_data!=0xFF)){
    hoffset = (efuse_data>>4) & 0x0F;
    hworden = efuse_data & 0x0F;
    word_cnts = efuse_CalculateWordCnts(hworden);
    bDataEmpty = TRUE ;

    if(hoffset==offset){
     for(tmpidx = 0;tmpidx< word_cnts*2 ;tmpidx++){
      if(efuse_OneByteRead(dev, efuse_addr+1+tmpidx ,&efuse_data) ){
       tmpdata[tmpidx] = efuse_data;
       if(efuse_data!=0xff){
        bDataEmpty = FALSE;
       }
      }
     }
     if(bDataEmpty==FALSE){
      ReadState = PG_STATE_DATA;
     }else{
      efuse_addr = efuse_addr + (word_cnts*2)+1;
      ReadState = PG_STATE_HEADER;
     }
    }
    else{
     efuse_addr = efuse_addr + (word_cnts*2)+1;
     ReadState = PG_STATE_HEADER;
    }

   }
   else{
    bContinual = FALSE ;
   }
  }

  else if(ReadState & PG_STATE_DATA)
  {
   efuse_WordEnableDataRead(hworden,tmpdata,data);
   efuse_addr = efuse_addr + (word_cnts*2)+1;
   ReadState = PG_STATE_HEADER;
  }

 }




 if( (data[0]==0xff) &&(data[1]==0xff) && (data[2]==0xff) && (data[3]==0xff) &&
  (data[4]==0xff) &&(data[5]==0xff) && (data[6]==0xff) && (data[7]==0xff))
  return FALSE;
 else
  return TRUE;

}
