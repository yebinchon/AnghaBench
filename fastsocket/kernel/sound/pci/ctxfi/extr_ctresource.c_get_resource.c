
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ENOENT ;

__attribute__((used)) static int
get_resource(u8 *rscs, unsigned int amount,
      unsigned int multi, unsigned int *ridx)
{
 int i, j, k, n;


 for (i = 0, n = multi; i < amount; i++) {
  j = i / 8;
  k = i % 8;
  if (rscs[j] & ((u8)1 << k)) {
   n = multi;
   continue;
  }
  if (!(--n))
   break;
 }

 if (i >= amount) {

  return -ENOENT;
 }


 for (n = multi; n > 0; n--) {
  j = i / 8;
  k = i % 8;
  rscs[j] |= ((u8)1 << k);
  i--;
 }

 *ridx = i + 1;

 return 0;
}
