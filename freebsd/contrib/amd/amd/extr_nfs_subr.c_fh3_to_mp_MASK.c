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
typedef  int /*<<< orphan*/  am_node ;
typedef  int /*<<< orphan*/  am_nfs_fh3 ;

/* Variables and functions */
 int /*<<< orphan*/  VLOOK_CREATE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static am_node *
FUNC1(am_nfs_fh3 *fhp)
{
  int dummy;

  return FUNC0(fhp, &dummy, VLOOK_CREATE);
}