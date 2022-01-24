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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static bool FUNC3 (tree node)
{
  const char *name = FUNC1 (FUNC0 (node));
  if (FUNC2 (name, "__builtin_", 10) == 0)
    return true;
  if (FUNC2 (name, "__sync_", 7) == 0)
    return true;
  return false;
}