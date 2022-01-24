#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
typedef  int /*<<< orphan*/  combined_entry_type ;
struct TYPE_2__ {int /*<<< orphan*/ * native; } ;

/* Variables and functions */
 int OBJ_COFF_MAX_AUXENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (long) ; 

void
FUNC6 (symbolS *newsymP, symbolS *orgsymP)
{
  long sz = (OBJ_COFF_MAX_AUXENTRIES + 1) * sizeof (combined_entry_type);
  combined_entry_type * s = FUNC5 (sz);

  FUNC3 (s, FUNC2 (FUNC4 (orgsymP))->native, sz);
  FUNC2 (FUNC4 (newsymP))->native = s;

  FUNC1 (newsymP, FUNC0 (orgsymP));
}