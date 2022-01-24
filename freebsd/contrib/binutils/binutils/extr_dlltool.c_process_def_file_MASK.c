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
 int /*<<< orphan*/  FOPEN_RT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * yyin ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5 (const char *name)
{
  FILE *f = FUNC2 (name, FOPEN_RT);

  if (!f)
    /* xgettext:c-format */
    FUNC1 (FUNC0("Can't open def file: %s"), name);

  yyin = f;

  /* xgettext:c-format */
  FUNC3 (FUNC0("Processing def file: %s"), name);

  FUNC4 ();

  FUNC3 (FUNC0("Processed def file"));
}