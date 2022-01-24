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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int TDF_SLIM ; 
 int /*<<< orphan*/  TDI_class ; 
 int /*<<< orphan*/  TFF_PLAIN_IDENTIFIER ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (tree t, tree binfo, tree vtable)
{
  int flags;
  FILE *stream = FUNC4 (TDI_class, &flags);

  if (!stream)
    return;

  if (!(flags & TDF_SLIM))
    {
      int ctor_vtbl_p = FUNC2 (t) != binfo;

      FUNC6 (stream, "%s for %s",
	       ctor_vtbl_p ? "Construction vtable" : "Vtable",
	       FUNC7 (FUNC0 (binfo), TFF_PLAIN_IDENTIFIER));
      if (ctor_vtbl_p)
	{
	  if (!FUNC1 (binfo))
	    FUNC6 (stream, " (0x%lx instance)", (unsigned long)binfo);
	  FUNC6 (stream, " in %s", FUNC7 (t, TFF_PLAIN_IDENTIFIER));
	}
      FUNC6 (stream, "\n");
      FUNC3 (stream, vtable);
      FUNC6 (stream, "\n");
    }

  FUNC5 (TDI_class, stream);
}