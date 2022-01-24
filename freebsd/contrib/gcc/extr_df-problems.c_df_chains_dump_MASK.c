#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct df_ref {int flags; } ;
struct TYPE_4__ {unsigned int bitmap_size; } ;
struct TYPE_3__ {unsigned int bitmap_size; } ;
struct df {TYPE_2__ use_info; TYPE_1__ def_info; } ;
struct dataflow {int flags; struct df* df; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct df_ref* FUNC0 (struct df*,unsigned int) ; 
 int DF_DU_CHAIN ; 
 int FUNC1 (struct df*,scalar_t__) ; 
 int FUNC2 (struct df_ref*) ; 
 int /*<<< orphan*/  FUNC3 (struct df_ref*) ; 
 scalar_t__ FUNC4 (struct df_ref*) ; 
 int FUNC5 (struct df_ref*) ; 
 int DF_REF_IN_NOTE ; 
 int DF_REF_READ_WRITE ; 
 int FUNC6 (struct df_ref*) ; 
 int DF_REF_STRIPPED ; 
 int DF_UD_CHAIN ; 
 struct df_ref* FUNC7 (struct df*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC10 (struct dataflow *dflow, FILE *file)
{
  struct df *df = dflow->df;
  unsigned int j;

  if (dflow->flags & DF_DU_CHAIN)
    {
      FUNC9 (file, "Def-use chains:\n");
      for (j = 0; j < df->def_info.bitmap_size; j++)
	{
	  struct df_ref *def = FUNC0 (df, j);
	  if (def)
	    {
	      FUNC9 (file, "d%d bb %d luid %d insn %d reg %d ",
		       j, FUNC2 (def),
		       FUNC4 (def) ? 
		       FUNC1 (df, FUNC4 (def)):
		       -1,
		       FUNC4 (def) ? FUNC5 (def) : -1,
		       FUNC6 (def));
	      if (def->flags & DF_REF_READ_WRITE)
		FUNC9 (file, "read/write ");
	      FUNC8 (FUNC3 (def), file);
	      FUNC9 (file, "\n");
	    }
	}
    }

  if (dflow->flags & DF_UD_CHAIN)
    {
      FUNC9 (file, "Use-def chains:\n");
      for (j = 0; j < df->use_info.bitmap_size; j++)
	{
	  struct df_ref *use = FUNC7 (df, j);
	  if (use)
	    {
	      FUNC9 (file, "u%d bb %d luid %d insn %d reg %d ",
		       j, FUNC2 (use),
		       FUNC4 (use) ? 
		       FUNC1 (df, FUNC4 (use))
		       : -1,
		       FUNC4 (FUNC7 (df, j)) ?
		       FUNC5 (FUNC7 (df,j))
		       : -1,
		       FUNC6 (use));
	      if (use->flags & DF_REF_READ_WRITE)
		FUNC9 (file, "read/write ");
	      if (use->flags & DF_REF_STRIPPED)
		FUNC9 (file, "stripped ");
	      if (use->flags & DF_REF_IN_NOTE)
		FUNC9 (file, "note ");
	      FUNC8 (FUNC3 (use), file);
	      FUNC9 (file, "\n");
	    }
	}
    }
}