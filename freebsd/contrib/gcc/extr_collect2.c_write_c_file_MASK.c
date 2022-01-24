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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  shared_obj ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void
FUNC3 (FILE *stream, const char *name)
{
  FUNC0 (stream, "#ifdef __cplusplus\nextern \"C\" {\n#endif\n");
#ifndef LD_INIT_SWITCH
  if (! shared_obj)
    FUNC1 (stream, name);
  else
#endif
    FUNC2 (stream, name);
  FUNC0 (stream, "#ifdef __cplusplus\n}\n#endif\n");
}