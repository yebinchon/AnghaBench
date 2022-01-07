
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ gcov_position_t ;
struct TYPE_2__ {scalar_t__ mode; scalar_t__ offset; scalar_t__ start; } ;


 int gcc_assert (int) ;
 TYPE_1__ gcov_var ;

__attribute__((used)) static inline gcov_position_t
gcov_position (void)
{
  gcc_assert (gcov_var.mode > 0);
  return gcov_var.start + gcov_var.offset;
}
