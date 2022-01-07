
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objalloc {int dummy; } ;
struct bfd_hash_table {unsigned long size; int count; int frozen; struct bfd_hash_entry** table; scalar_t__ memory; struct bfd_hash_entry* (* newfunc ) (int *,struct bfd_hash_table*,char const*) ;} ;
struct bfd_hash_entry {unsigned long hash; char const* string; struct bfd_hash_entry* next; } ;
typedef scalar_t__ bfd_boolean ;
typedef int PTR ;


 int bfd_error_no_memory ;
 int bfd_set_error (int ) ;
 unsigned long higher_prime_number (int) ;
 int memcpy (char*,char const*,unsigned int) ;
 int memset (int ,int ,unsigned long) ;
 char* objalloc_alloc (struct objalloc*,unsigned long) ;
 scalar_t__ strcmp (char const*,char const*) ;
 struct bfd_hash_entry* stub1 (int *,struct bfd_hash_table*,char const*) ;

struct bfd_hash_entry *
bfd_hash_lookup (struct bfd_hash_table *table,
   const char *string,
   bfd_boolean create,
   bfd_boolean copy)
{
  const unsigned char *s;
  unsigned long hash;
  unsigned int c;
  struct bfd_hash_entry *hashp;
  unsigned int len;
  unsigned int index;

  hash = 0;
  len = 0;
  s = (const unsigned char *) string;
  while ((c = *s++) != '\0')
    {
      hash += c + (c << 17);
      hash ^= hash >> 2;
    }
  len = (s - (const unsigned char *) string) - 1;
  hash += len + (len << 17);
  hash ^= hash >> 2;

  index = hash % table->size;
  for (hashp = table->table[index];
       hashp != ((void*)0);
       hashp = hashp->next)
    {
      if (hashp->hash == hash
   && strcmp (hashp->string, string) == 0)
 return hashp;
    }

  if (! create)
    return ((void*)0);

  hashp = (*table->newfunc) (((void*)0), table, string);
  if (hashp == ((void*)0))
    return ((void*)0);
  if (copy)
    {
      char *new;

      new = objalloc_alloc ((struct objalloc *) table->memory, len + 1);
      if (!new)
 {
   bfd_set_error (bfd_error_no_memory);
   return ((void*)0);
 }
      memcpy (new, string, len + 1);
      string = new;
    }
  hashp->string = string;
  hashp->hash = hash;
  hashp->next = table->table[index];
  table->table[index] = hashp;
  table->count++;

  if (!table->frozen && table->count > table->size * 3 / 4)
    {
      unsigned long newsize = higher_prime_number (table->size);
      struct bfd_hash_entry **newtable;
      unsigned int hi;
      unsigned long alloc = newsize * sizeof (struct bfd_hash_entry *);



      if (newsize == 0 || alloc / sizeof (struct bfd_hash_entry *) != newsize)
 {
   table->frozen = 1;
   return hashp;
 }

      newtable = ((struct bfd_hash_entry **)
    objalloc_alloc ((struct objalloc *) table->memory, alloc));
      memset ((PTR) newtable, 0, alloc);

      for (hi = 0; hi < table->size; hi ++)
 while (table->table[hi])
   {
     struct bfd_hash_entry *chain = table->table[hi];
     struct bfd_hash_entry *chain_end = chain;
     int index;

     while (chain_end->next && chain_end->next->hash == chain->hash)
       chain_end = chain_end->next;

     table->table[hi] = chain_end->next;
     index = chain->hash % newsize;
     chain_end->next = newtable[index];
     newtable[index] = chain;
   }
      table->table = newtable;
      table->size = newsize;
    }

  return hashp;
}
