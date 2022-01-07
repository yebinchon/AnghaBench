
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wbsoft_priv {int dummy; } ;
struct wb35_descriptor {int FragmentThreshold; int TxRate; int FragmentCount; } ;
struct TYPE_4__ {void* value; scalar_t__ T00_frame_length; } ;
struct TYPE_3__ {int T01_add_rts; int T01_add_cts; int T01_rts_cts_duration; void* value; scalar_t__ T01_plcp_header_length; scalar_t__ T01_modulation_type; } ;
typedef TYPE_1__* PT01_DESCRIPTOR ;
typedef TYPE_2__* PT00_DESCRIPTOR ;


 scalar_t__ CURRENT_PROTECT_MECHANISM ;
 int CURRENT_RTS_THRESHOLD ;
 int DEFAULT_SIFSTIME ;
 int DOT_11_DA_OFFSET ;
 int LONG_PREAMBLE_PLUS_PLCPHEADER_TIME ;
 int PREAMBLE_PLUS_SIGNAL_PLUS_SIGNALEXTENSION ;
 int SHORT_PREAMBLE_PLUS_PLCPHEADER_TIME ;
 int Tsym ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (void*) ;

__attribute__((used)) static void Mds_DurationSet(struct wbsoft_priv *adapter, struct wb35_descriptor *pDes, u8 *buffer)
{
 PT00_DESCRIPTOR pT00;
 PT01_DESCRIPTOR pT01;
 u16 Duration, NextBodyLen, OffsetSize;
 u8 Rate, i;
 unsigned char CTS_on = 0, RTS_on = 0;
 PT00_DESCRIPTOR pNextT00;
 u16 BodyLen = 0;
 unsigned char boGroupAddr = 0;

 OffsetSize = pDes->FragmentThreshold + 32 + 3;
 OffsetSize &= ~0x03;
 Rate = pDes->TxRate >> 1;
 if (!Rate)
  Rate = 1;

 pT00 = (PT00_DESCRIPTOR)buffer;
 pT01 = (PT01_DESCRIPTOR)(buffer+4);
 pNextT00 = (PT00_DESCRIPTOR)(buffer+OffsetSize);

 if( buffer[ DOT_11_DA_OFFSET+8 ] & 0x1 )
  boGroupAddr = 1;




 if (!boGroupAddr)
 {




  BodyLen = (u16)pT00->T00_frame_length;
  BodyLen += 4;

  if( BodyLen >= CURRENT_RTS_THRESHOLD )
   RTS_on = 1;
  else
  {
   if( pT01->T01_modulation_type )
   {
    if( CURRENT_PROTECT_MECHANISM )
     CTS_on = 1;
   }
  }
 }

 if( RTS_on || CTS_on )
 {
  if( pT01->T01_modulation_type)
  {




   Duration = 2*DEFAULT_SIFSTIME +
        2*PREAMBLE_PLUS_SIGNAL_PLUS_SIGNALEXTENSION +
        ((BodyLen*8 + 22 + Rate*4 - 1)/(Rate*4))*Tsym +
        ((112 + 22 + 95)/96)*Tsym;
  }
  else
  {




   if( pT01->T01_plcp_header_length )
    Duration = LONG_PREAMBLE_PLUS_PLCPHEADER_TIME*2;
   else
    Duration = SHORT_PREAMBLE_PLUS_PLCPHEADER_TIME*2;

   Duration += ( ((BodyLen + 14)*8 + Rate-1) / Rate +
      DEFAULT_SIFSTIME*2 );
  }

  if( RTS_on )
  {
   if( pT01->T01_modulation_type )
   {



    Duration += (DEFAULT_SIFSTIME +
        PREAMBLE_PLUS_SIGNAL_PLUS_SIGNALEXTENSION +
        ((112 + 22 + 95)/96)*Tsym);
   }
   else
   {



    if( pT01->T01_plcp_header_length )
     Duration += LONG_PREAMBLE_PLUS_PLCPHEADER_TIME;
    else
     Duration += SHORT_PREAMBLE_PLUS_PLCPHEADER_TIME;

    Duration += ( ((112 + Rate-1) / Rate) + DEFAULT_SIFSTIME );
   }
  }


  pT01->T01_add_rts = RTS_on ? 1 : 0;
  pT01->T01_add_cts = CTS_on ? 1 : 0;
  pT01->T01_rts_cts_duration = Duration;
 }




 if( boGroupAddr )
  Duration = 0;
 else
 {
  for( i=pDes->FragmentCount-1; i>0; i-- )
  {
   NextBodyLen = (u16)pNextT00->T00_frame_length;
   NextBodyLen += 4;

   if( pT01->T01_modulation_type )
   {




    Duration = PREAMBLE_PLUS_SIGNAL_PLUS_SIGNALEXTENSION * 3;
    Duration += (((NextBodyLen*8 + 22 + Rate*4 - 1)/(Rate*4)) * Tsym +
       (((2*14)*8 + 22 + 95)/96)*Tsym +
       DEFAULT_SIFSTIME*3);
   }
   else
   {





    if( pT01->T01_plcp_header_length )
     Duration = LONG_PREAMBLE_PLUS_PLCPHEADER_TIME*3;
    else
     Duration = SHORT_PREAMBLE_PLUS_PLCPHEADER_TIME*3;

    Duration += ( ((NextBodyLen + (2*14))*8 + Rate-1) / Rate +
       DEFAULT_SIFSTIME*3 );
   }

   ((u16 *)buffer)[5] = cpu_to_le16(Duration);


   pNextT00->value = cpu_to_le32(pNextT00->value);
   pT01->value = cpu_to_le32( pT01->value );


   buffer += OffsetSize;
   pT01 = (PT01_DESCRIPTOR)(buffer+4);
   if (i != 1)
    pNextT00 = (PT00_DESCRIPTOR)(buffer+OffsetSize);
  }




  if( pT01->T01_modulation_type )
  {




   Duration = PREAMBLE_PLUS_SIGNAL_PLUS_SIGNALEXTENSION;

   Duration += (((112 + 22 + 95)/96)*Tsym + DEFAULT_SIFSTIME );
  }
  else
  {




   if( pT01->T01_plcp_header_length )
    Duration = LONG_PREAMBLE_PLUS_PLCPHEADER_TIME;
   else
    Duration = SHORT_PREAMBLE_PLUS_PLCPHEADER_TIME;

   Duration += ( (112 + Rate-1)/Rate + DEFAULT_SIFSTIME );
  }
 }

 ((u16 *)buffer)[5] = cpu_to_le16(Duration);
 pT00->value = cpu_to_le32(pT00->value);
 pT01->value = cpu_to_le32(pT01->value);


}
