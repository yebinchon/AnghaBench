
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* sig; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 unsigned int HOST_BITS_PER_LONG ;

__attribute__((used)) static inline bool
test_significand_bit (REAL_VALUE_TYPE *r, unsigned int n)
{



  int t = (r->sig[n / HOST_BITS_PER_LONG] >> (n % HOST_BITS_PER_LONG)) & 1;
  return t;
}
