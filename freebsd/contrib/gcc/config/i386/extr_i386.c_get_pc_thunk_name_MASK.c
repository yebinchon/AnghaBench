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
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 scalar_t__ USE_HIDDEN_LINKONCE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char** reg_names ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC3 (char name[32], unsigned int regno)
{
  FUNC1 (!TARGET_64BIT);

  if (USE_HIDDEN_LINKONCE)
    FUNC2 (name, "__i686.get_pc_thunk.%s", reg_names[regno]);
  else
    FUNC0 (name, "LPR", regno);
}