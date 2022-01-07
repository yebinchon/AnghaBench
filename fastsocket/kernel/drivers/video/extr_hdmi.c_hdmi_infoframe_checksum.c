
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static void hdmi_infoframe_checksum(void *buffer, size_t size)
{
 u8 *ptr = buffer;
 u8 csum = 0;
 size_t i;


 for (i = 0; i < size; i++)
  csum += ptr[i];

 ptr[3] = 256 - csum;
}
