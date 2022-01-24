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
struct elf_link_hash_table {int /*<<< orphan*/  dynobj; } ;
struct elf_link_hash_entry {int dynindx; int /*<<< orphan*/  type; int /*<<< orphan*/  other; scalar_t__ forced_local; int /*<<< orphan*/  def_regular; } ;
struct elf_backend_data {int /*<<< orphan*/  (* is_function_type ) (int /*<<< orphan*/ ) ;} ;
struct bfd_link_info {scalar_t__ executable; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct elf_link_hash_entry*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ STV_DEFAULT ; 
 scalar_t__ STV_PROTECTED ; 
 scalar_t__ FUNC2 (struct bfd_link_info*,struct elf_link_hash_entry*) ; 
 int /*<<< orphan*/  TRUE ; 
 struct elf_link_hash_table* FUNC3 (struct bfd_link_info*) ; 
 struct elf_backend_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct elf_link_hash_table*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

bfd_boolean
FUNC7 (struct elf_link_hash_entry *h,
			      struct bfd_link_info *info,
			      bfd_boolean local_protected)
{
  const struct elf_backend_data *bed;
  struct elf_link_hash_table *hash_table;

  /* If it's a local sym, of course we resolve locally.  */
  if (h == NULL)
    return TRUE;

  /* Common symbols that become definitions don't get the DEF_REGULAR
     flag set, so test it first, and don't bail out.  */
  if (FUNC0 (h))
    /* Do nothing.  */;
  /* If we don't have a definition in a regular file, then we can't
     resolve locally.  The sym is either undefined or dynamic.  */
  else if (!h->def_regular)
    return FALSE;

  /* Forced local symbols resolve locally.  */
  if (h->forced_local)
    return TRUE;

  /* As do non-dynamic symbols.  */
  if (h->dynindx == -1)
    return TRUE;

  /* At this point, we know the symbol is defined and dynamic.  In an
     executable it must resolve locally, likewise when building symbolic
     shared libraries.  */
  if (info->executable || FUNC2 (info, h))
    return TRUE;

  /* Now deal with defined dynamic symbols in shared libraries.  Ones
     with default visibility might not resolve locally.  */
  if (FUNC1 (h->other) == STV_DEFAULT)
    return FALSE;

  /* However, STV_HIDDEN or STV_INTERNAL ones must be local.  */
  if (FUNC1 (h->other) != STV_PROTECTED)
    return TRUE;

  hash_table = FUNC3 (info);
  if (!FUNC5 (hash_table))
    return TRUE;

  bed = FUNC4 (hash_table->dynobj);

  /* STV_PROTECTED non-function symbols are local.  */
  if (!bed->is_function_type (h->type))
    return TRUE;

  /* Function pointer equality tests may require that STV_PROTECTED
     symbols be treated as dynamic symbols, even when we know that the
     dynamic linker will resolve them locally.  */
  return local_protected;
}