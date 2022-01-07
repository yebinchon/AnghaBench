
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; scalar_t__ file; } ;


 TYPE_1__ gcov_var ;

__attribute__((used)) static inline int
gcov_is_error (void)
{
  return gcov_var.file ? gcov_var.error : 1;
}
