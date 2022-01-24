#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ poc_name; } ;
typedef  TYPE_1__ pseudo_typeS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  po_hash ; 
 int /*<<< orphan*/  pop_override_ok ; 
 int /*<<< orphan*/  pop_table_name ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

void
FUNC4 (const pseudo_typeS *table)
{
  const char *errtxt;
  const pseudo_typeS *pop;
  for (pop = table; pop->poc_name; pop++)
    {
      errtxt = FUNC2 (po_hash, pop->poc_name, (char *) pop);
      if (errtxt && (!pop_override_ok || FUNC3 (errtxt, "exists")))
	FUNC1 (FUNC0("error constructing %s pseudo-op table: %s"), pop_table_name,
		  errtxt);
    }
}