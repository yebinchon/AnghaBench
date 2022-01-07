
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gcov_unsigned_t ;
struct TYPE_2__ {scalar_t__ endian; } ;


 TYPE_1__ gcov_var ;

__attribute__((used)) static inline gcov_unsigned_t from_file (gcov_unsigned_t value)
{

  if (gcov_var.endian)
    {
      value = (value >> 16) | (value << 16);
      value = ((value & 0xff00ff) << 8) | ((value >> 8) & 0xff00ff);
    }

  return value;
}
