
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ dt_gt_128 (int *,int *) ;
 int dt_shift_128 (int *,int) ;

__attribute__((used)) static int
dt_nbits_128(uint64_t *a)
{
 int nbits = 0;
 uint64_t tmp[2];
 uint64_t zero[2] = { 0, 0 };

 tmp[0] = a[0];
 tmp[1] = a[1];

 dt_shift_128(tmp, -1);
 while (dt_gt_128(tmp, zero)) {
  dt_shift_128(tmp, -1);
  nbits++;
 }

 return (nbits);
}
