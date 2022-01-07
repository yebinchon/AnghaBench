
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
leading_ptr_eq_p (const void *def1, const void *def2)
{
  return *(const void *const *) def1 == *(const void *const *) def2;
}
