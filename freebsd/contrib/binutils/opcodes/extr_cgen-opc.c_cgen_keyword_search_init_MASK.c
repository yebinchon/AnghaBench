#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * name_hash_table; } ;
struct TYPE_6__ {char const* spec; int /*<<< orphan*/ * current_entry; scalar_t__ current_hash; TYPE_2__* table; } ;
typedef  TYPE_1__ CGEN_KEYWORD_SEARCH ;
typedef  TYPE_2__ CGEN_KEYWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

CGEN_KEYWORD_SEARCH
FUNC2 (CGEN_KEYWORD *kt, const char *spec)
{
  CGEN_KEYWORD_SEARCH search;

  /* FIXME: Need to specify format of params.  */
  if (spec != NULL)
    FUNC0 ();

  if (kt->name_hash_table == NULL)
    FUNC1 (kt);

  search.table = kt;
  search.spec = spec;
  search.current_hash = 0;
  search.current_entry = NULL;
  return search;
}