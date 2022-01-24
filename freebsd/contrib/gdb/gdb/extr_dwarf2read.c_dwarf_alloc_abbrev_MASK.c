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
struct abbrev_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct abbrev_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static struct abbrev_info *
FUNC2 (void)
{
  struct abbrev_info *abbrev;

  abbrev = (struct abbrev_info *) FUNC1 (sizeof (struct abbrev_info));
  FUNC0 (abbrev, 0, sizeof (struct abbrev_info));
  return (abbrev);
}