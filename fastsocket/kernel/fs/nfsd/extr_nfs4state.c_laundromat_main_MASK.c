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
typedef  int time_t ;
struct work_struct {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  laundromat_work ; 
 int /*<<< orphan*/  laundry_wq ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(struct work_struct *not_used)
{
	time_t t;

	t = FUNC1();
	FUNC0("NFSD: laundromat_main - sleeping for %ld seconds\n", t);
	FUNC2(laundry_wq, &laundromat_work, t*HZ);
}