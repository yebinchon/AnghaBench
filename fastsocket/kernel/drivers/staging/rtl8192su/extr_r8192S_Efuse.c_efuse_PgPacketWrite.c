
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int offset; scalar_t__ word_en; scalar_t__* data; } ;
typedef TYPE_1__ PGPKT_STRUCT ;


 scalar_t__ BIT0 ;
 scalar_t__ BIT1 ;
 scalar_t__ BIT2 ;
 scalar_t__ BIT3 ;
 scalar_t__ EFUSE_MAX_SIZE ;
 scalar_t__ EFUSE_REPEAT_THRESHOLD_ ;
 scalar_t__ FALSE ;
 scalar_t__ PG_STATE_DATA ;
 scalar_t__ PG_STATE_HEADER ;
 scalar_t__ TRUE ;
 scalar_t__ efuse_CalculateWordCnts (scalar_t__) ;
 scalar_t__ efuse_GetCurrentSize (struct net_device*) ;
 scalar_t__ efuse_OneByteRead (struct net_device*,scalar_t__,scalar_t__*) ;
 int efuse_OneByteWrite (struct net_device*,scalar_t__,scalar_t__) ;
 scalar_t__ efuse_PgPacketRead (struct net_device*,int,scalar_t__*) ;
 int efuse_WordEnableDataRead (scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ efuse_WordEnableDataWrite (struct net_device*,scalar_t__,scalar_t__,scalar_t__*) ;
 int memset (scalar_t__*,int,int) ;
 int printk (char*) ;

__attribute__((used)) static u8 efuse_PgPacketWrite(struct net_device* dev, u8 offset, u8 word_en,u8 *data)
{
 u8 WriteState = PG_STATE_HEADER;

 bool bContinual = TRUE,bDataEmpty=TRUE, bResult = TRUE;
 u16 efuse_addr = 0;
 u8 efuse_data;

 u8 pg_header = 0;


 u8 tmp_word_cnts=0,target_word_cnts=0;
 u8 tmp_header,match_word_en,tmp_word_en;



 PGPKT_STRUCT target_pkt;
 PGPKT_STRUCT tmp_pkt;

 u8 originaldata[sizeof(u8)*8];
 u8 tmpindex = 0,badworden = 0x0F;

 static u32 repeat_times = 0;

 if( efuse_GetCurrentSize(dev) >= EFUSE_MAX_SIZE)
 {
  printk("efuse_PgPacketWrite error \n");
  return FALSE;
 }


 target_pkt.offset = offset;
 target_pkt.word_en= word_en;


 memset(target_pkt.data,0xFF,sizeof(u8)*8);

 efuse_WordEnableDataRead(word_en,data,target_pkt.data);
 target_word_cnts = efuse_CalculateWordCnts(target_pkt.word_en);


 printk("EFUSE Power ON\n");

 while( bContinual && (efuse_addr < EFUSE_MAX_SIZE) )
 {

  if(WriteState==PG_STATE_HEADER)
  {
   bDataEmpty=TRUE;
   badworden = 0x0F;

   printk("EFUSE PG_STATE_HEADER\n");
   if ( efuse_OneByteRead(dev, efuse_addr ,&efuse_data) &&
    (efuse_data!=0xFF))
   {
    tmp_header = efuse_data;

    tmp_pkt.offset = (tmp_header>>4) & 0x0F;
    tmp_pkt.word_en = tmp_header & 0x0F;
    tmp_word_cnts = efuse_CalculateWordCnts(tmp_pkt.word_en);


    if(tmp_pkt.offset != target_pkt.offset)
    {
     efuse_addr = efuse_addr + (tmp_word_cnts*2) +1;



    }
    else
    {

     for(tmpindex=0 ; tmpindex<(tmp_word_cnts*2) ; tmpindex++)
     {
      if(efuse_OneByteRead(dev, (efuse_addr+1+tmpindex) ,&efuse_data)&&(efuse_data != 0xFF)){
       bDataEmpty = FALSE;
      }
     }

     if(bDataEmpty == FALSE)
     {
      efuse_addr = efuse_addr + (tmp_word_cnts*2) +1;



     }
     else
     {
      match_word_en = 0x0F;
      if( !( (target_pkt.word_en&BIT0)|(tmp_pkt.word_en&BIT0) ))
      {
        match_word_en &= (~BIT0);
      }
      if( !( (target_pkt.word_en&BIT1)|(tmp_pkt.word_en&BIT1) ))
      {
        match_word_en &= (~BIT1);
      }
      if( !( (target_pkt.word_en&BIT2)|(tmp_pkt.word_en&BIT2) ))
      {
        match_word_en &= (~BIT2);
      }
      if( !( (target_pkt.word_en&BIT3)|(tmp_pkt.word_en&BIT3) ))
      {
        match_word_en &= (~BIT3);
      }


      if((match_word_en&0x0F)!=0x0F)
      {
       badworden = efuse_WordEnableDataWrite(dev,efuse_addr+1, tmp_pkt.word_en ,target_pkt.data);



       if(0x0F != (badworden&0x0F))
       {
        u8 reorg_offset = offset;
        u8 reorg_worden=badworden;
        efuse_PgPacketWrite(dev,reorg_offset,reorg_worden,originaldata);
       }


       tmp_word_en = 0x0F;
       if( (target_pkt.word_en&BIT0)^(match_word_en&BIT0) )
       {
        tmp_word_en &= (~BIT0);
       }
       if( (target_pkt.word_en&BIT1)^(match_word_en&BIT1) )
       {
        tmp_word_en &= (~BIT1);
       }
       if( (target_pkt.word_en&BIT2)^(match_word_en&BIT2) )
       {
        tmp_word_en &= (~BIT2);
       }
       if( (target_pkt.word_en&BIT3)^(match_word_en&BIT3) )
       {
        tmp_word_en &=(~BIT3);
       }


       if((tmp_word_en&0x0F)!=0x0F){


        efuse_addr = efuse_GetCurrentSize(dev);

        target_pkt.offset = offset;
        target_pkt.word_en= tmp_word_en;

       }else{
        bContinual = FALSE;
       }
      }
      else{

       efuse_addr = efuse_addr + (2*tmp_word_cnts) +1;

       target_pkt.offset = offset;
       target_pkt.word_en= target_pkt.word_en;




      }
     }
    }
    printk("EFUSE PG_STATE_HEADER-1\n");
   }
   else
   {
    pg_header = ((target_pkt.offset << 4)&0xf0) |target_pkt.word_en;

    efuse_OneByteWrite(dev,efuse_addr, pg_header);
    efuse_OneByteRead(dev,efuse_addr, &tmp_header);

    if(tmp_header == pg_header)
    {
     WriteState = PG_STATE_DATA;
    }
    else
    {
     tmp_pkt.offset = (tmp_header>>4) & 0x0F;
     tmp_pkt.word_en= tmp_header & 0x0F;
     tmp_word_cnts = efuse_CalculateWordCnts(tmp_pkt.word_en);


     memset(originaldata,0xff,sizeof(u8)*8);


     if(efuse_PgPacketRead( dev, tmp_pkt.offset,originaldata))
     {

      badworden = efuse_WordEnableDataWrite(dev,efuse_addr+1,tmp_pkt.word_en,originaldata);

      if(0x0F != (badworden&0x0F))
      {
       u8 reorg_offset = tmp_pkt.offset;
       u8 reorg_worden=badworden;
       efuse_PgPacketWrite(dev,reorg_offset,reorg_worden,originaldata);
       efuse_addr = efuse_GetCurrentSize(dev);
      }

      else{
       efuse_addr = efuse_addr + (tmp_word_cnts*2) +1;
      }
     }

     else
     {
      efuse_addr = efuse_addr + (tmp_word_cnts*2) +1;
     }
     printk("EFUSE PG_STATE_HEADER-2\n");
    }

   }

  }

  else if(WriteState==PG_STATE_DATA)
  {
   printk("EFUSE PG_STATE_DATA\n");
   badworden = 0x0f;
   badworden = efuse_WordEnableDataWrite(dev,efuse_addr+1,target_pkt.word_en,target_pkt.data);
   if((badworden&0x0F)==0x0F)
   {
    bContinual = FALSE;
   }
   else
   {
    efuse_addr = efuse_addr + (2*target_word_cnts) +1;


    target_pkt.offset = offset;
    target_pkt.word_en= badworden;
    target_word_cnts = efuse_CalculateWordCnts(target_pkt.word_en);
    printk("EFUSE PG_STATE_HEADER-3\n");
   }
  }
 }



 return TRUE;
}
