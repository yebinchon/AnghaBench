
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objalloc {int dummy; } ;
struct bfd_hash_table {unsigned int size; unsigned int entsize; struct bfd_hash_entry* (* newfunc ) (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;scalar_t__ frozen; scalar_t__ count; int * table; int * memory; } ;
struct bfd_hash_entry {int dummy; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int bfd_error_no_memory ;
 int bfd_set_error (int ) ;
 int memset (void*,int ,unsigned int) ;
 int * objalloc_alloc (struct objalloc*,unsigned int) ;
 scalar_t__ objalloc_create () ;

bfd_boolean
bfd_hash_table_init_n (struct bfd_hash_table *table,
         struct bfd_hash_entry *(*newfunc) (struct bfd_hash_entry *,
         struct bfd_hash_table *,
         const char *),
         unsigned int entsize,
         unsigned int size)
{
  unsigned int alloc;

  alloc = size * sizeof (struct bfd_hash_entry *);

  table->memory = (void *) objalloc_create ();
  if (table->memory == ((void*)0))
    {
      bfd_set_error (bfd_error_no_memory);
      return FALSE;
    }
  table->table = objalloc_alloc ((struct objalloc *) table->memory, alloc);
  if (table->table == ((void*)0))
    {
      bfd_set_error (bfd_error_no_memory);
      return FALSE;
    }
  memset ((void *) table->table, 0, alloc);
  table->size = size;
  table->entsize = entsize;
  table->count = 0;
  table->frozen = 0;
  table->newfunc = newfunc;
  return TRUE;
}
