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
struct TYPE_2__ {char* printable_name; } ;

/* Variables and functions */
 TYPE_1__* TARGET_ARCHITECTURE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ target_architecture_auto ; 

__attribute__((used)) static void
FUNC1 (char *args, int from_tty)
{
  const char *arch;
  arch = TARGET_ARCHITECTURE->printable_name;
  if (target_architecture_auto)
    FUNC0 ("The target architecture is set automatically (currently %s)\n", arch);
  else
    FUNC0 ("The target architecture is assumed to be %s\n", arch);
}