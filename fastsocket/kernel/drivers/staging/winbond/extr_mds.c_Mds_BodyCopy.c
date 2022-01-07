
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wb35_mds {int MicAdd; int** MicWriteAddress; size_t MicWriteIndex; int* MicWriteSize; } ;
struct wbsoft_priv {struct wb35_mds Mds; } ;
struct wb35_descriptor {int buffer_total_size; int buffer_start_index; int FragmentThreshold; int** buffer_address; int* buffer_size; int FragmentCount; } ;
struct TYPE_2__ {int T00_frame_length; int T00_first_mpdu; int T00_last_mpdu; int T00_IsLastMpdu; } ;
typedef TYPE_1__* PT00_DESCRIPTOR ;


 int DOT_11_SEQUENCE_OFFSET ;
 int MAX_DESCRIPTOR_BUFFER_INDEX ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static u16 Mds_BodyCopy(struct wbsoft_priv *adapter, struct wb35_descriptor *pDes, u8 *TargetBuffer)
{
 PT00_DESCRIPTOR pT00;
 struct wb35_mds *pMds = &adapter->Mds;
 u8 *buffer;
 u8 *src_buffer;
 u8 *pctmp;
 u16 Size = 0;
 u16 SizeLeft, CopySize, CopyLeft, stmp;
 u8 buf_index, FragmentCount = 0;



 buffer = TargetBuffer;
 SizeLeft = pDes->buffer_total_size;
 buf_index = pDes->buffer_start_index;

 pT00 = (PT00_DESCRIPTOR)buffer;
 while (SizeLeft) {
  pT00 = (PT00_DESCRIPTOR)buffer;
  CopySize = SizeLeft;
  if (SizeLeft > pDes->FragmentThreshold) {
   CopySize = pDes->FragmentThreshold;
   pT00->T00_frame_length = 24 + CopySize;
  } else
   pT00->T00_frame_length = 24 + SizeLeft;

  SizeLeft -= CopySize;


  pctmp = (u8 *)( buffer + 8 + DOT_11_SEQUENCE_OFFSET );
  *pctmp &= 0xf0;
  *pctmp |= FragmentCount;
  if( !FragmentCount )
   pT00->T00_first_mpdu = 1;

  buffer += 32;
  Size += 32;


  stmp = CopySize + 3;
  stmp &= ~0x03;
  Size += stmp;

  while (CopySize) {

   src_buffer = pDes->buffer_address[buf_index];
   CopyLeft = CopySize;
   if (CopySize >= pDes->buffer_size[buf_index]) {
    CopyLeft = pDes->buffer_size[buf_index];


    buf_index++;
    buf_index %= MAX_DESCRIPTOR_BUFFER_INDEX;
   } else {
    u8 *pctmp = pDes->buffer_address[buf_index];
    pctmp += CopySize;
    pDes->buffer_address[buf_index] = pctmp;
    pDes->buffer_size[buf_index] -= CopySize;
   }

   memcpy(buffer, src_buffer, CopyLeft);
   buffer += CopyLeft;
   CopySize -= CopyLeft;
  }


  if (pMds->MicAdd) {
   if (!SizeLeft) {
    pMds->MicWriteAddress[ pMds->MicWriteIndex ] = buffer - pMds->MicAdd;
    pMds->MicWriteSize[ pMds->MicWriteIndex ] = pMds->MicAdd;
    pMds->MicAdd = 0;
   }
   else if( SizeLeft < 8 )
   {
    pMds->MicAdd = SizeLeft;
    pMds->MicWriteAddress[ pMds->MicWriteIndex ] = buffer - ( 8 - SizeLeft );
    pMds->MicWriteSize[ pMds->MicWriteIndex ] = 8 - SizeLeft;
    pMds->MicWriteIndex++;
   }
  }


  if (SizeLeft) {
   buffer = TargetBuffer + Size;
   memcpy( buffer, TargetBuffer, 32 );
   pT00 = (PT00_DESCRIPTOR)buffer;
   pT00->T00_first_mpdu = 0;
  }

  FragmentCount++;
 }

 pT00->T00_last_mpdu = 1;
 pT00->T00_IsLastMpdu = 1;
 buffer = (u8 *)pT00 + 8;
 buffer[1] &= ~0x04;
 pDes->FragmentCount = FragmentCount;
 return Size;
}
