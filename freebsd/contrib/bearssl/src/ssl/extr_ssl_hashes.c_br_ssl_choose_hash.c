
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
br_ssl_choose_hash(unsigned bf)
{
 static const unsigned char pref[] = {
  130, 129, 128,
  131, 132
 };
 size_t u;

 for (u = 0; u < sizeof pref; u ++) {
  int x;

  x = pref[u];
  if ((bf >> x) & 1) {
   return x;
  }
 }
 return 0;
}
