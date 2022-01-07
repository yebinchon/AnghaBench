
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_reference {int dummy; } ;


 scalar_t__ DR_MISALIGNMENT (struct data_reference*) ;

__attribute__((used)) static inline bool
aligned_access_p (struct data_reference *data_ref_info)
{
  return (DR_MISALIGNMENT (data_ref_info) == 0);
}
