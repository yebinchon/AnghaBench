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
 size_t FUNC1 (scalar_t__) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,void*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* ridpointers ; 

void
FUNC9 (FILE *file, tree node, int indent)
{
  FUNC8 (file, "symbol", FUNC4 (node), indent + 4);
  FUNC8 (file, "tag", FUNC5 (node), indent + 4);
  FUNC8 (file, "label", FUNC3 (node), indent + 4);
  if (FUNC0 (node))
    {
      tree rid = ridpointers[FUNC1 (node)];
      FUNC7 (file, indent + 4);
      FUNC6 (file, "rid %p \"%s\"",
	       (void *) rid, FUNC2 (rid));
    }
}