#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct objalloc {int dummy; } ;
struct bfd_hash_table {unsigned long size; int count; int frozen; struct bfd_hash_entry** table; scalar_t__ memory; struct bfd_hash_entry* (* newfunc ) (int /*<<< orphan*/ *,struct bfd_hash_table*,char const*) ;} ;
struct bfd_hash_entry {unsigned long hash; char const* string; struct bfd_hash_entry* next; } ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  PTR ;

/* Variables and functions */
 int /*<<< orphan*/  bfd_error_no_memory ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 char* FUNC4 (struct objalloc*,unsigned long) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 struct bfd_hash_entry* FUNC6 (int /*<<< orphan*/ *,struct bfd_hash_table*,char const*) ; 

struct bfd_hash_entry *
FUNC7 (struct bfd_hash_table *table,
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
       hashp != NULL;
       hashp = hashp->next)
    {
      if (hashp->hash == hash
	  && FUNC5 (hashp->string, string) == 0)
	return hashp;
    }

  if (! create)
    return NULL;

  hashp = (*table->newfunc) (NULL, table, string);
  if (hashp == NULL)
    return NULL;
  if (copy)
    {
      char *new;

      new = FUNC4 ((struct objalloc *) table->memory, len + 1);
      if (!new)
	{
	  FUNC0 (bfd_error_no_memory);
	  return NULL;
	}
      FUNC2 (new, string, len + 1);
      string = new;
    }
  hashp->string = string;
  hashp->hash = hash;
  hashp->next = table->table[index];
  table->table[index] = hashp;
  table->count++;

  if (!table->frozen && table->count > table->size * 3 / 4)
    {
      unsigned long newsize = FUNC1 (table->size);
      struct bfd_hash_entry **newtable;
      unsigned int hi;
      unsigned long alloc = newsize * sizeof (struct bfd_hash_entry *);

      /* If we can't find a higher prime, or we can't possibly alloc
	 that much memory, don't try to grow the table.  */
      if (newsize == 0 || alloc / sizeof (struct bfd_hash_entry *) != newsize)
	{
	  table->frozen = 1;
	  return hashp;
	}

      newtable = ((struct bfd_hash_entry **)
		  FUNC4 ((struct objalloc *) table->memory, alloc));
      FUNC3 ((PTR) newtable, 0, alloc);

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