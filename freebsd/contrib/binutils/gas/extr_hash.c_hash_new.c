
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {int dummy; } ;
struct hash_control {unsigned long size; scalar_t__ deletions; scalar_t__ replacements; scalar_t__ insertions; scalar_t__ string_compares; scalar_t__ hash_compares; scalar_t__ lookups; int table; int memory; } ;


 int chunksize ;
 unsigned long get_gas_hash_table_size () ;
 int memset (int ,int ,unsigned long) ;
 int obstack_alloc (int *,unsigned long) ;
 int obstack_begin (int *,int ) ;
 struct hash_control* xmalloc (int) ;

struct hash_control *
hash_new (void)
{
  unsigned long size;
  unsigned long alloc;
  struct hash_control *ret;

  size = get_gas_hash_table_size ();

  ret = xmalloc (sizeof *ret);
  obstack_begin (&ret->memory, chunksize);
  alloc = size * sizeof (struct hash_entry *);
  ret->table = obstack_alloc (&ret->memory, alloc);
  memset (ret->table, 0, alloc);
  ret->size = size;
  return ret;
}
