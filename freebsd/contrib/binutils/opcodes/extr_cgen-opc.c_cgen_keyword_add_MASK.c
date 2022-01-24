#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__* nonalpha_chars; TYPE_1__* null_entry; TYPE_1__** value_hash_table; TYPE_1__** name_hash_table; } ;
struct TYPE_8__ {scalar_t__* name; struct TYPE_8__* next_value; int /*<<< orphan*/  value; struct TYPE_8__* next_name; } ;
typedef  TYPE_1__ CGEN_KEYWORD_ENTRY ;
typedef  TYPE_2__ CGEN_KEYWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 unsigned int FUNC3 (TYPE_2__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__) ; 
 size_t FUNC6 (scalar_t__*) ; 

void
FUNC7 (CGEN_KEYWORD *kt, CGEN_KEYWORD_ENTRY *ke)
{
  unsigned int hash;
  size_t i;

  if (kt->name_hash_table == NULL)
    FUNC2 (kt);

  hash = FUNC3 (kt, ke->name, 0);
  ke->next_name = kt->name_hash_table[hash];
  kt->name_hash_table[hash] = ke;

  hash = FUNC4 (kt, ke->value);
  ke->next_value = kt->value_hash_table[hash];
  kt->value_hash_table[hash] = ke;

  if (ke->name[0] == 0)
    kt->null_entry = ke;

  for (i = 1; i < FUNC6 (ke->name); i++)
    if (! FUNC0 (ke->name[i])
	&& ! FUNC5 (kt->nonalpha_chars, ke->name[i]))
      {
	size_t idx = FUNC6 (kt->nonalpha_chars);
	
	/* If you hit this limit, please don't just
	   increase the size of the field, instead
	   look for a better algorithm.  */
	if (idx >= sizeof (kt->nonalpha_chars) - 1)
	  FUNC1 ();
	kt->nonalpha_chars[idx] = ke->name[i];
	kt->nonalpha_chars[idx+1] = 0;
      }
}