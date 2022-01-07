
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SampleResolution; int Loop; int Bidirectional; int Reverse; int FrequencyBias; int sampleEndOffset; int loopEndOffset; int loopStartOffset; int sampleStartOffset; } ;
typedef TYPE_1__ wavefront_sample ;
typedef int u8 ;
typedef int u32 ;


 int demunge_int32 (int*,int) ;
 int memcpy (int*,unsigned char*,int) ;

__attribute__((used)) static void
process_sample_hdr (u8 *buf)

{
 wavefront_sample s;
 u8 *ptr;

 ptr = buf;
 *((u32 *) &s.sampleStartOffset) = demunge_int32 (ptr, 4); ptr += 4;
 *((u32 *) &s.loopStartOffset) = demunge_int32 (ptr, 4); ptr += 4;
 *((u32 *) &s.loopEndOffset) = demunge_int32 (ptr, 4); ptr += 4;
 *((u32 *) &s.sampleEndOffset) = demunge_int32 (ptr, 4); ptr += 4;
 *((u32 *) &s.FrequencyBias) = demunge_int32 (ptr, 3); ptr += 3;

 s.SampleResolution = *ptr & 0x3;
 s.Loop = *ptr & 0x8;
 s.Bidirectional = *ptr & 0x10;
 s.Reverse = *ptr & 0x40;



 memcpy (buf, (unsigned char *) &s, sizeof (wavefront_sample));
}
