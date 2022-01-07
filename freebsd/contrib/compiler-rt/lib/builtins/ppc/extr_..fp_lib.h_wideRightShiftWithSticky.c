
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int rep_t ;


 unsigned int typeWidth ;

__attribute__((used)) static __inline void wideRightShiftWithSticky(rep_t *hi, rep_t *lo,
                                              unsigned int count) {
  if (count < typeWidth) {
    const bool sticky = *lo << (typeWidth - count);
    *lo = *hi << (typeWidth - count) | *lo >> count | sticky;
    *hi = *hi >> count;
  } else if (count < 2 * typeWidth) {
    const bool sticky = *hi << (2 * typeWidth - count) | *lo;
    *lo = *hi >> (count - typeWidth) | sticky;
    *hi = 0;
  } else {
    const bool sticky = *hi | *lo;
    *lo = sticky;
    *hi = 0;
  }
}
