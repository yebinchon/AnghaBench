
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_hash_entry {scalar_t__ index; int size; } ;
struct stab_write_handle {int typedef_hash; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int assert (int) ;
 int stab_push_defined_type (struct stab_write_handle*,scalar_t__,int ) ;
 struct string_hash_entry* string_hash_lookup (int *,char const*,int ,int ) ;

__attribute__((used)) static bfd_boolean
stab_typedef_type (void *p, const char *name)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  struct string_hash_entry *h;

  h = string_hash_lookup (&info->typedef_hash, name, FALSE, FALSE);
  assert (h != ((void*)0) && h->index > 0);

  return stab_push_defined_type (info, h->index, h->size);
}
