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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 
 int FUNC3 (char const*) ; 

int
FUNC4 (const char *name)
{
  struct stat st;

  if (FUNC2 (name, &st) == 0
      && (FUNC1 (st.st_mode) || FUNC0 (st.st_mode)))
    return FUNC3 (name);

  return 1;
}