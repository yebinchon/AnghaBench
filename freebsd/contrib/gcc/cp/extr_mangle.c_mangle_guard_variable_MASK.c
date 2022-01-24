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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

tree
FUNC8 (const tree variable)
{
  FUNC4 (variable, /*ident_p=*/true);
  FUNC7 ("_ZGV");
  if (FUNC5 (FUNC1 (FUNC0 (variable)), "_ZGR", 4) == 0)
    /* The name of a guard variable for a reference temporary should refer
       to the reference, not the temporary.  */
    FUNC7 (FUNC1 (FUNC0 (variable)) + 4);
  else
    FUNC6 (variable, /*ignore_local_scope=*/0);
  return FUNC3 (FUNC2 (/*warn=*/false));
}