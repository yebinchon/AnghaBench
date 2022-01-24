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
struct objfile {int minimal_symbol_count; scalar_t__* msymbol_demangled_hash; scalar_t__* msymbol_hash; struct minimal_symbol* msymbols; } ;
struct minimal_symbol {scalar_t__ demangled_hash_next; scalar_t__ hash_next; } ;

/* Variables and functions */
 int MINIMAL_SYMBOL_HASH_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  FUNC1 (struct minimal_symbol*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct minimal_symbol*,scalar_t__*) ; 

__attribute__((used)) static void
FUNC3 (struct objfile *objfile)
{
  int i;
  struct minimal_symbol *msym;

  /* Clear the hash tables. */
  for (i = 0; i < MINIMAL_SYMBOL_HASH_SIZE; i++)
    {
      objfile->msymbol_hash[i] = 0;
      objfile->msymbol_demangled_hash[i] = 0;
    }

  /* Now, (re)insert the actual entries. */
  for (i = objfile->minimal_symbol_count, msym = objfile->msymbols;
       i > 0;
       i--, msym++)
    {
      msym->hash_next = 0;
      FUNC2 (msym, objfile->msymbol_hash);

      msym->demangled_hash_next = 0;
      if (FUNC0 (msym) != NULL)
	FUNC1 (msym,
                                            objfile->msymbol_demangled_hash);
    }
}