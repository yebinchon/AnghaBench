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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_NULL ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (long) ; 

void
FUNC11 (symbolS *symbolP)
{
  long   sz = (OBJ_COFF_MAX_AUXENTRIES + 1) * sizeof (combined_entry_type);
  char * s  = FUNC10 (sz);

  FUNC8 (s, 0, sz);
  FUNC7 (FUNC9 (symbolP))->native = (combined_entry_type *) s;

  FUNC4 (symbolP, T_NULL);
  FUNC6 (symbolP, 0);
  FUNC5 (symbolP, 0);

  if (FUNC3 (symbolP))
    FUNC1 (symbolP);

  if (FUNC2 (symbolP))
    FUNC0 (symbolP);
}