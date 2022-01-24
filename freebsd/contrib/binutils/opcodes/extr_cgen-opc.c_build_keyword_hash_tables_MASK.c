#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int num_init_entries; unsigned int hash_table_size; int /*<<< orphan*/ * init_entries; int /*<<< orphan*/ ** value_hash_table; int /*<<< orphan*/ ** name_hash_table; } ;
typedef  int /*<<< orphan*/  CGEN_KEYWORD_ENTRY ;
typedef  TYPE_1__ CGEN_KEYWORD ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 

__attribute__((used)) static void
FUNC4 (CGEN_KEYWORD *kt)
{
  int i;
  /* Use the number of compiled in entries as an estimate for the
     typical sized table [not too many added at runtime].  */
  unsigned int size = FUNC0 (kt->num_init_entries);

  kt->hash_table_size = size;
  kt->name_hash_table = (CGEN_KEYWORD_ENTRY **)
    FUNC3 (size * sizeof (CGEN_KEYWORD_ENTRY *));
  FUNC2 (kt->name_hash_table, 0, size * sizeof (CGEN_KEYWORD_ENTRY *));
  kt->value_hash_table = (CGEN_KEYWORD_ENTRY **)
    FUNC3 (size * sizeof (CGEN_KEYWORD_ENTRY *));
  FUNC2 (kt->value_hash_table, 0, size * sizeof (CGEN_KEYWORD_ENTRY *));

  /* The table is scanned backwards as we want keywords appearing earlier to
     be prefered over later ones.  */
  for (i = kt->num_init_entries - 1; i >= 0; --i)
    FUNC1 (kt, &kt->init_entries[i]);
}