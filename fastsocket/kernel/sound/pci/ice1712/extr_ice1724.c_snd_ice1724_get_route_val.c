
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int ROUTE_PLAYBACK ;
 unsigned long inl (int ) ;
 int snd_BUG () ;

int snd_ice1724_get_route_val(struct snd_ice1712 *ice, int shift)
{
 unsigned long val;
 unsigned char eitem;
 static const unsigned char xlate[8] = {
  0, 255, 1, 2, 255, 255, 3, 4,
 };

 val = inl(ICEMT1724(ice, ROUTE_PLAYBACK));
 val >>= shift;
 val &= 7;
 eitem = xlate[val];
 if (eitem == 255) {
  snd_BUG();
  return 0;
 }
 return eitem;
}
