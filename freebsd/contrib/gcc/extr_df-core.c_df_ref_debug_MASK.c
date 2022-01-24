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
struct df_ref {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (struct df_ref*) ; 
 int /*<<< orphan*/  FUNC1 (struct df_ref*) ; 
 int FUNC2 (struct df_ref*) ; 
 int /*<<< orphan*/  FUNC3 (struct df_ref*) ; 
 scalar_t__ FUNC4 (struct df_ref*) ; 
 int FUNC5 (struct df_ref*) ; 
 scalar_t__ FUNC6 (struct df_ref*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC10 (struct df_ref *ref, FILE *file)
{
  FUNC9 (file, "%c%d ",
	   FUNC6 (ref) ? 'd' : 'u',
	   FUNC3 (ref));
  FUNC9 (file, "reg %d bb %d insn %d flag %x chain ",
	   FUNC5 (ref),
	   FUNC0 (ref),
	   FUNC4 (ref) ? FUNC7 (FUNC4 (ref)) : -1,
	   FUNC2 (ref));
  FUNC8 (FUNC1 (ref), file);
  FUNC9 (file, "\n");
}