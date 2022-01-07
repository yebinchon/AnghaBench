
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* x; int* y; int* z; } ;
typedef TYPE_1__ p256_jacobian ;


 int EQ (int,int) ;
 int** Gwin ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void
lookup_Gwin(p256_jacobian *T, uint32_t idx)
{
 uint32_t xy[20];
 uint32_t k;
 size_t u;

 memset(xy, 0, sizeof xy);
 for (k = 0; k < 15; k ++) {
  uint32_t m;

  m = -EQ(idx, k + 1);
  for (u = 0; u < 20; u ++) {
   xy[u] |= m & Gwin[k][u];
  }
 }
 for (u = 0; u < 10; u ++) {
  T->x[(u << 1) + 0] = xy[u] & 0xFFFF;
  T->x[(u << 1) + 1] = xy[u] >> 16;
  T->y[(u << 1) + 0] = xy[u + 10] & 0xFFFF;
  T->y[(u << 1) + 1] = xy[u + 10] >> 16;
 }
 memset(T->z, 0, sizeof T->z);
 T->z[0] = 1;
}
