
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* index; struct elf_strtab_hash_entry* suffix; } ;
struct elf_strtab_hash_entry {int len; TYPE_1__ u; scalar_t__ refcount; } ;
struct elf_strtab_hash {int size; struct elf_strtab_hash_entry** array; void* sec_size; } ;
typedef void* bfd_size_type ;


 struct elf_strtab_hash_entry** bfd_malloc (void*) ;
 int free (struct elf_strtab_hash_entry**) ;
 scalar_t__ is_suffix (struct elf_strtab_hash_entry*,struct elf_strtab_hash_entry*) ;
 int qsort (struct elf_strtab_hash_entry**,void*,int,int ) ;
 int strrevcmp ;

void
_bfd_elf_strtab_finalize (struct elf_strtab_hash *tab)
{
  struct elf_strtab_hash_entry **array, **a, *e;
  bfd_size_type size, amt;





  size_t i;


  amt = tab->size * sizeof (struct elf_strtab_hash_entry *);
  array = bfd_malloc (amt);
  if (array == ((void*)0))
    goto alloc_failure;

  for (i = 1, a = array; i < tab->size; ++i)
    {
      e = tab->array[i];
      if (e->refcount)
 {
   *a++ = e;

   e->len -= 1;
 }
      else
 e->len = 0;
    }

  size = a - array;
  if (size != 0)
    {
      qsort (array, size, sizeof (struct elf_strtab_hash_entry *), strrevcmp);
      e = *--a;
      e->len += 1;
      while (--a >= array)
 {
   struct elf_strtab_hash_entry *cmp = *a;

   cmp->len += 1;
   if (is_suffix (e, cmp))
     {
       cmp->u.suffix = e;
       cmp->len = -cmp->len;
     }
   else
     e = cmp;
 }
    }

alloc_failure:
  if (array)
    free (array);


  size = 1;
  for (i = 1; i < tab->size; ++i)
    {
      e = tab->array[i];
      if (e->refcount && e->len > 0)
 {
   e->u.index = size;
   size += e->len;
 }
    }

  tab->sec_size = size;


  for (i = 1; i < tab->size; ++i)
    {
      e = tab->array[i];
      if (e->refcount && e->len < 0)
 e->u.index = e->u.suffix->u.index + (e->u.suffix->len + e->len);
    }
}
