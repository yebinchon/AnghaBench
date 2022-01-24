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
 int BITS_PER_UNIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TFF_PLAIN_IDENTIFIER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (FILE *stream, int flags, tree t)
{
  FUNC5 (stream, "Class %s\n", FUNC7 (t, TFF_PLAIN_IDENTIFIER));
  FUNC5 (stream, "   size=%lu align=%lu\n",
	   (unsigned long)(FUNC6 (FUNC3 (t), 0) / BITS_PER_UNIT),
	   (unsigned long)(FUNC1 (t) / BITS_PER_UNIT));
  FUNC5 (stream, "   base size=%lu base align=%lu\n",
	   (unsigned long)(FUNC6 (FUNC3 (FUNC0 (t)), 0)
			   / BITS_PER_UNIT),
	   (unsigned long)(FUNC1 (FUNC0 (t))
			   / BITS_PER_UNIT));
  FUNC4 (stream, flags, FUNC2 (t), FUNC2 (t), 0);
  FUNC5 (stream, "\n");
}