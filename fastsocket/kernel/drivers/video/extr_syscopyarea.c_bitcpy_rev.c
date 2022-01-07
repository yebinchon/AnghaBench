
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 unsigned long FB_SHIFT_LOW (struct fb_info*,unsigned long,int) ;
 unsigned long comp (unsigned long const,unsigned long,unsigned long) ;
 int ffs (int) ;

__attribute__((used)) static void
bitcpy_rev(struct fb_info *p, unsigned long *dst, int dst_idx,
  const unsigned long *src, int src_idx, int bits, unsigned n)
{
 unsigned long first, last;
 int shift;

 dst += (n-1)/bits;
 src += (n-1)/bits;
 if ((n-1) % bits) {
  dst_idx += (n-1) % bits;
  dst += dst_idx >> (ffs(bits) - 1);
  dst_idx &= bits - 1;
  src_idx += (n-1) % bits;
  src += src_idx >> (ffs(bits) - 1);
  src_idx &= bits - 1;
 }

 shift = dst_idx-src_idx;

 first = FB_SHIFT_LOW(p, ~0UL, bits - 1 - dst_idx);
 last = ~(FB_SHIFT_LOW(p, ~0UL, bits - 1 - ((dst_idx-n) % bits)));

 if (!shift) {

  if ((unsigned long)dst_idx+1 >= n) {

   if (last)
    first &= last;
   *dst = comp(*src, *dst, first);
  } else {



   if (first != ~0UL) {
    *dst = comp(*src, *dst, first);
    dst--;
    src--;
    n -= dst_idx+1;
   }


   n /= bits;
   while (n >= 8) {
    *dst-- = *src--;
    *dst-- = *src--;
    *dst-- = *src--;
    *dst-- = *src--;
    *dst-- = *src--;
    *dst-- = *src--;
    *dst-- = *src--;
    *dst-- = *src--;
    n -= 8;
   }
   while (n--)
    *dst-- = *src--;

   if (last)
    *dst = comp(*src, *dst, last);
  }
 } else {


  int const left = -shift & (bits-1);
  int const right = shift & (bits-1);

  if ((unsigned long)dst_idx+1 >= n) {

   if (last)
    first &= last;
   if (shift < 0) {

    *dst = comp(*src << left, *dst, first);
   } else if (1+(unsigned long)src_idx >= n) {

    *dst = comp(*src >> right, *dst, first);
   } else {

    *dst = comp(*src >> right | *(src-1) << left,
         *dst, first);
   }
  } else {







   unsigned long d0, d1;
   int m;

   d0 = *src--;

   if (shift < 0) {

    *dst = comp(d0 << left, *dst, first);
   } else {

    d1 = *src--;
    *dst = comp(d0 >> right | d1 << left, *dst,
         first);
    d0 = d1;
   }
   dst--;
   n -= dst_idx+1;


   m = n % bits;
   n /= bits;
   while (n >= 4) {
    d1 = *src--;
    *dst-- = d0 >> right | d1 << left;
    d0 = d1;
    d1 = *src--;
    *dst-- = d0 >> right | d1 << left;
    d0 = d1;
    d1 = *src--;
    *dst-- = d0 >> right | d1 << left;
    d0 = d1;
    d1 = *src--;
    *dst-- = d0 >> right | d1 << left;
    d0 = d1;
    n -= 4;
   }
   while (n--) {
    d1 = *src--;
    *dst-- = d0 >> right | d1 << left;
    d0 = d1;
   }


   if (last) {
    if (m <= left) {

     *dst = comp(d0 >> right, *dst, last);
    } else {

     d1 = *src;
     *dst = comp(d0 >> right | d1 << left,
          *dst, last);
    }
   }
  }
 }
}
