
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong_t ;
struct TYPE_2__ {char* t_name; } ;
typedef TYPE_1__ tdesc_t ;



int
tdesc_namehash(int nbuckets, void *data)
{
 tdesc_t *tdp = data;
 ulong_t h, g;
 char *c;

 if (tdp->t_name == ((void*)0))
  return (0);

 for (h = 0, c = tdp->t_name; *c; c++) {
  h = (h << 4) + *c;
  if ((g = (h & 0xf0000000)) != 0) {
   h ^= (g >> 24);
   h ^= g;
  }
 }

 return (h % nbuckets);
}
