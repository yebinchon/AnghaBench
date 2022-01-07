
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASHC ;

long sdbm_hash(const char *str, int len)
{
 register unsigned long n = 0;






 if (len > 0) {
  register int loop = (len + 8 - 1) >> 3;

  switch(len & (8 - 1)) {
  case 0: do {
   n = *str++ + 65599 * n; case 7: n = *str++ + 65599 * n;
  case 6: n = *str++ + 65599 * n; case 5: n = *str++ + 65599 * n;
  case 4: n = *str++ + 65599 * n; case 3: n = *str++ + 65599 * n;
  case 2: n = *str++ + 65599 * n; case 1: n = *str++ + 65599 * n;
   } while (--loop);
  }

 }




 return n;
}
