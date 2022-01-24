#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__** value_hash_table; int /*<<< orphan*/ * name_hash_table; } ;
struct TYPE_7__ {int value; struct TYPE_7__* next_value; } ;
typedef  TYPE_1__ CGEN_KEYWORD_ENTRY ;
typedef  TYPE_2__ CGEN_KEYWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 size_t FUNC1 (TYPE_2__*,int) ; 

const CGEN_KEYWORD_ENTRY *
FUNC2 (CGEN_KEYWORD *kt, int value)
{
  const CGEN_KEYWORD_ENTRY *ke;

  if (kt->name_hash_table == NULL)
    FUNC0 (kt);

  ke = kt->value_hash_table[FUNC1 (kt, value)];

  while (ke != NULL)
    {
      if (value == ke->value)
	return ke;
      ke = ke->next_value;
    }

  return NULL;
}