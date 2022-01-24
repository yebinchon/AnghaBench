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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  outf ; 
 scalar_t__ partial_count ; 

__attribute__((used)) static void
FUNC1 (void)
{
  if (partial_count)
    {
      FUNC0 (outf, "#ifndef _PARAMS\n");
      FUNC0 (outf, "#if defined(__STDC__) || defined(__cplusplus)\n");
      FUNC0 (outf, "#define _PARAMS(ARGS) ARGS\n");
      FUNC0 (outf, "#else\n");
      FUNC0 (outf, "#define _PARAMS(ARGS) ()\n");
      FUNC0 (outf, "#endif\n#endif /* _PARAMS */\n");
    }
}