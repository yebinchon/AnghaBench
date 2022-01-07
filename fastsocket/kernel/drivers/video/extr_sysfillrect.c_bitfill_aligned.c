
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 unsigned long FB_SHIFT_HIGH (struct fb_info*,unsigned long,int) ;
 unsigned long comp (unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static void
bitfill_aligned(struct fb_info *p, unsigned long *dst, int dst_idx,
  unsigned long pat, unsigned n, int bits)
{
 unsigned long first, last;

 if (!n)
  return;

 first = FB_SHIFT_HIGH(p, ~0UL, dst_idx);
 last = ~(FB_SHIFT_HIGH(p, ~0UL, (dst_idx+n) % bits));

 if (dst_idx+n <= bits) {

  if (last)
   first &= last;
  *dst = comp(pat, *dst, first);
 } else {



   if (first!= ~0UL) {
   *dst = comp(pat, *dst, first);
   dst++;
   n -= bits - dst_idx;
  }


  n /= bits;
  while (n >= 8) {
   *dst++ = pat;
   *dst++ = pat;
   *dst++ = pat;
   *dst++ = pat;
   *dst++ = pat;
   *dst++ = pat;
   *dst++ = pat;
   *dst++ = pat;
   n -= 8;
  }
  while (n--)
   *dst++ = pat;

  if (last)
   *dst = comp(pat, *dst, last);
 }
}
