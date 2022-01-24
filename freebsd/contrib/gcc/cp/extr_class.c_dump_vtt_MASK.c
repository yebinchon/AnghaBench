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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int TDF_SLIM ; 
 int /*<<< orphan*/  TDI_class ; 
 int /*<<< orphan*/  TFF_PLAIN_IDENTIFIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (tree t, tree vtt)
{
  int flags;
  FILE *stream = FUNC1 (TDI_class, &flags);

  if (!stream)
    return;

  if (!(flags & TDF_SLIM))
    {
      FUNC3 (stream, "VTT for %s\n",
	       FUNC4 (t, TFF_PLAIN_IDENTIFIER));
      FUNC0 (stream, vtt);
      FUNC3 (stream, "\n");
    }

  FUNC2 (TDI_class, stream);
}