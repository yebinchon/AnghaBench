
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int d ;


 int c2p_16x8 (int*) ;
 int memcpy (int *,int const*,int) ;
 int memset (int *,int ,int) ;
 int store_iplan2 (void*,int,int*) ;
 int store_iplan2_masked (void*,int,int*,int) ;

void c2p_iplan2(void *dst, const void *src, u32 dx, u32 dy, u32 width,
  u32 height, u32 dst_nextline, u32 src_nextline, u32 bpp)
{
 union {
  u8 pixels[16];
  u32 words[4];
 } d;
 u32 dst_idx, first, last, w;
 const u8 *c;
 void *p;

 dst += dy*dst_nextline+(dx & ~15)*bpp;
 dst_idx = dx % 16;
 first = 0xffffU >> dst_idx;
 first |= first << 16;
 last = 0xffffU ^ (0xffffU >> ((dst_idx+width) % 16));
 last |= last << 16;
 while (height--) {
  c = src;
  p = dst;
  w = width;
  if (dst_idx+width <= 16) {

   first &= last;
   memset(d.pixels, 0, sizeof(d));
   memcpy(d.pixels+dst_idx, c, width);
   c += width;
   c2p_16x8(d.words);
   store_iplan2_masked(p, bpp, d.words, first);
   p += bpp*2;
  } else {

   w = width;

   if (dst_idx) {
    w = 16 - dst_idx;
    memset(d.pixels, 0, dst_idx);
    memcpy(d.pixels+dst_idx, c, w);
    c += w;
    c2p_16x8(d.words);
    store_iplan2_masked(p, bpp, d.words, first);
    p += bpp*2;
    w = width-w;
   }

   while (w >= 16) {
    memcpy(d.pixels, c, 16);
    c += 16;
    c2p_16x8(d.words);
    store_iplan2(p, bpp, d.words);
    p += bpp*2;
    w -= 16;
   }

   w %= 16;
   if (w > 0) {
    memcpy(d.pixels, c, w);
    memset(d.pixels+w, 0, 16-w);
    c2p_16x8(d.words);
    store_iplan2_masked(p, bpp, d.words, last);
   }
  }
  src += src_nextline;
  dst += dst_nextline;
 }
}
