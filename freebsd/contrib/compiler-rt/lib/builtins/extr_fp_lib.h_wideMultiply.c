
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int rep_t ;



__attribute__((used)) static __inline void wideMultiply(rep_t a, rep_t b, rep_t *hi, rep_t *lo) {
  const uint64_t product = (uint64_t)a * b;
  *hi = product >> 32;
  *lo = product;
}
