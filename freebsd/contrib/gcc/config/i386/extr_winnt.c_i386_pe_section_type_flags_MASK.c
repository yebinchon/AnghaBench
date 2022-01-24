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
typedef  scalar_t__ tree ;
typedef  scalar_t__ htab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  INSERT ; 
 unsigned int SECTION_CODE ; 
 unsigned int SECTION_LINKONCE ; 
 unsigned int SECTION_PE_SHARED ; 
 unsigned int SECTION_WRITE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  htab_eq_pointer ; 
 scalar_t__ FUNC6 (scalar_t__,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  htab_hash_pointer ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

unsigned int
FUNC9 (tree decl, const char *name, int reloc)
{
  static htab_t htab;
  unsigned int flags;
  unsigned int **slot;

  /* The names we put in the hashtable will always be the unique
     versions given to us by the stringtable, so we can just use
     their addresses as the keys.  */
  if (!htab)
    htab = FUNC5 (31, htab_hash_pointer, htab_eq_pointer, NULL);

  if (decl && FUNC2 (decl) == FUNCTION_DECL)
    flags = SECTION_CODE;
  else if (decl && FUNC3 (decl, reloc))
    flags = 0;
  else
    {
      flags = SECTION_WRITE;

      if (decl && FUNC2 (decl) == VAR_DECL
	  && FUNC7 ("shared", FUNC0 (decl)))
	flags |= SECTION_PE_SHARED;
    }

  if (decl && FUNC1 (decl))
    flags |= SECTION_LINKONCE;

  /* See if we already have an entry for this section.  */
  slot = (unsigned int **) FUNC6 (htab, name, INSERT);
  if (!*slot)
    {
      *slot = (unsigned int *) FUNC8 (sizeof (unsigned int));
      **slot = flags;
    }
  else
    {
      if (decl && **slot != flags)
	FUNC4 ("%q+D causes a section type conflict", decl);
    }

  return flags;
}