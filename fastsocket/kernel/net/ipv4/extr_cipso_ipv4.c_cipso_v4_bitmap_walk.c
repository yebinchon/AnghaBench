
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;



__attribute__((used)) static int cipso_v4_bitmap_walk(const unsigned char *bitmap,
    u32 bitmap_len,
    u32 offset,
    u8 state)
{
 u32 bit_spot;
 u32 byte_offset;
 unsigned char bitmask;
 unsigned char byte;


 byte_offset = offset / 8;
 byte = bitmap[byte_offset];
 bit_spot = offset;
 bitmask = 0x80 >> (offset % 8);

 while (bit_spot < bitmap_len) {
  if ((state && (byte & bitmask) == bitmask) ||
      (state == 0 && (byte & bitmask) == 0))
   return bit_spot;

  bit_spot++;
  bitmask >>= 1;
  if (bitmask == 0) {
   byte = bitmap[++byte_offset];
   bitmask = 0x80;
  }
 }

 return -1;
}
