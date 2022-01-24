#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  prologue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char const*) ; 
 TYPE_1__ unwind ; 
 int FUNC2 (char*,char const*) ; 

__attribute__((used)) static int
FUNC3 (const char *directive)
{
  int in = FUNC1 (directive);

  if (in > 0 && !unwind.prologue)
    in = FUNC2 ("prologue", directive);
  FUNC0 ();
  return in;
}