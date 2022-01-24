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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  warning_count ; 

__attribute__((used)) static void
FUNC7 (char *file, unsigned int line, char *buffer)
{
  ++warning_count;

  if (file == NULL)
    FUNC1 (&file, &line);

  FUNC4 (file);
  if (file)
    FUNC2 (stderr, "%s:%u: ", file, line);
  FUNC2 (stderr, "%s", FUNC0("Warning: "));
  FUNC3 (buffer, stderr);
  (void) FUNC6 ('\n', stderr);
#ifndef NO_LISTING
  FUNC5 (buffer);
#endif
}