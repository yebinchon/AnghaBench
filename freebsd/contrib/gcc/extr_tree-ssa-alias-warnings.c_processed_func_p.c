
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
typedef int * htab_t ;


 int INSERT ;
 int gcc_assert (void**) ;
 int * htab_create (int,int ,int ,int *) ;
 int htab_eq_pointer ;
 void** htab_find_slot (int *,void*,int ) ;
 int htab_hash_pointer ;

__attribute__((used)) static bool
processed_func_p (tree func)
{
  static htab_t seen = ((void*)0);
  void **slot;

  if (!seen)
    seen = htab_create (100, htab_hash_pointer, htab_eq_pointer, ((void*)0));

  slot = htab_find_slot (seen, func, INSERT);
  gcc_assert (slot);

  if (*slot)
    return 1;

  *slot = func;
  return 0;
}
