
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int VERIFY_READ ;
 scalar_t__ __get_user (int ,int *) ;
 int access_ok (int ,void const*,unsigned long) ;
 int fb_writeb (int ,int *) ;
 int fb_writew (int ,int *) ;

__attribute__((used)) static inline unsigned long copy_from_user16(void *to, const void *from,
          unsigned long n)
{
 u16 *dst = (u16 *) to;
 u16 *src = (u16 *) from;

 if (!access_ok(VERIFY_READ, from, n))
  return n;

 while (n > 1) {
  u16 v;
  if (__get_user(v, src))
   return n;

  fb_writew(v, dst);

  src++, dst++;
  n -= 2;
 }

 if (n) {
  u8 v;

  if (__get_user(v, ((u8 *) src)))
   return n;

  fb_writeb(v, dst);
 }
 return 0;
}
