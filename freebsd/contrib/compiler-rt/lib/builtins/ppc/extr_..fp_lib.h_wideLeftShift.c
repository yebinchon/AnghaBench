
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rep_t ;


 int typeWidth ;

__attribute__((used)) static __inline void wideLeftShift(rep_t *hi, rep_t *lo, int count) {
  *hi = *hi << count | *lo >> (typeWidth - count);
  *lo = *lo << count;
}
