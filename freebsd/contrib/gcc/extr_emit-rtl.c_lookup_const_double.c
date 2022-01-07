
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* rtx ;


 int INSERT ;
 int const_double_htab ;
 void** htab_find_slot (int ,void*,int ) ;

__attribute__((used)) static rtx
lookup_const_double (rtx real)
{
  void **slot = htab_find_slot (const_double_htab, real, INSERT);
  if (*slot == 0)
    *slot = real;

  return (rtx) *slot;
}
