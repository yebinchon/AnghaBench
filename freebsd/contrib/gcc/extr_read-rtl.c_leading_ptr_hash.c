
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashval_t ;


 int htab_hash_pointer (void const* const) ;

__attribute__((used)) static hashval_t
leading_ptr_hash (const void *def)
{
  return htab_hash_pointer (*(const void *const *) def);
}
