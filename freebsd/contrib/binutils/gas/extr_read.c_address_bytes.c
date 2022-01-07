
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* arch_info; } ;
struct TYPE_3__ {int bits_per_address; } ;


 TYPE_2__* stdoutput ;

__attribute__((used)) static inline int
address_bytes (void)
{


  int n = (stdoutput->arch_info->bits_per_address - 1) / 8;
  n |= n >> 1;
  n |= n >> 2;
  n += 1;
  return n;
}
