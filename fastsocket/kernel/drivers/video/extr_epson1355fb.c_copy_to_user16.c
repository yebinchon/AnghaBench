
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int VERIFY_WRITE ;
 scalar_t__ __put_user (int ,int *) ;
 int access_ok (int ,void*,unsigned long) ;
 int fb_readb (int *) ;
 int fb_readw (int *) ;

__attribute__((used)) static inline unsigned long copy_to_user16(void *to, const void *from,
        unsigned long n)
{
 u16 *dst = (u16 *) to;
 u16 *src = (u16 *) from;

 if (!access_ok(VERIFY_WRITE, to, n))
  return n;

 while (n > 1) {
  u16 v = fb_readw(src);

  if (__put_user(v, dst))
   return n;

  src++, dst++;
  n -= 2;
 }

 if (n) {
  u8 v = fb_readb(src);

  if (__put_user(v, ((u8 *) dst)))
   return n;
 }
 return 0;
}
