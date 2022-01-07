
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
struct function {int * used_types_hash; } ;


 int INSERT ;
 int * htab_create_ggc (int,int ,int ,int *) ;
 int htab_eq_pointer ;
 void** htab_find_slot (int *,int *,int ) ;
 int htab_hash_pointer ;

__attribute__((used)) static void
used_types_insert_helper (tree type, struct function *func)
{
  if (type != ((void*)0) && func != ((void*)0))
    {
      void **slot;

      if (func->used_types_hash == ((void*)0))
 func->used_types_hash = htab_create_ggc (37, htab_hash_pointer,
       htab_eq_pointer, ((void*)0));
      slot = htab_find_slot (func->used_types_hash, type, INSERT);
      if (*slot == ((void*)0))
 *slot = type;
    }
}
