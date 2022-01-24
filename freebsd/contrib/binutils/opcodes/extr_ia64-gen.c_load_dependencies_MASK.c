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
 int /*<<< orphan*/  IA64_DV_RAW ; 
 int /*<<< orphan*/  IA64_DV_WAR ; 
 int /*<<< orphan*/  IA64_DV_WAW ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int rdepslen ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC0 ("ia64-raw.tbl", IA64_DV_RAW);
  FUNC0 ("ia64-waw.tbl", IA64_DV_WAW);
  FUNC0 ("ia64-war.tbl", IA64_DV_WAR);

  if (debug)
    FUNC1 ("%d RAW/WAW/WAR dependencies\n", rdepslen);
}