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
 scalar_t__ DEBUG_MANGLE ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 

const char *
FUNC4 (const tree type)
{
  const char *result;

  FUNC2 (type, /*ident_p=*/false);
  FUNC3 (type);
  result = FUNC0 (/*warn=*/false);
  if (DEBUG_MANGLE)
    FUNC1 (stderr, "mangle_type_string = '%s'\n\n", result);
  return result;
}