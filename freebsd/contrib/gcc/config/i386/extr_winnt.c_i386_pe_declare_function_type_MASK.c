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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ C_EXT ; 
 scalar_t__ C_STAT ; 
 scalar_t__ DT_FCN ; 
 int N_BTSHFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC2 (FILE *file, const char *name, int public)
{
  FUNC1 (file, "\t.def\t");
  FUNC0 (file, name);
  FUNC1 (file, ";\t.scl\t%d;\t.type\t%d;\t.endef\n",
	   public ? (int) C_EXT : (int) C_STAT,
	   (int) DT_FCN << N_BTSHFT);
}