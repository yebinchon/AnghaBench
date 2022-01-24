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
struct held_lock {int /*<<< orphan*/  acquire_ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct held_lock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct held_lock *hlock)
{
	FUNC2(FUNC0(hlock));
	FUNC3(", at: ");
	FUNC1(hlock->acquire_ip);
}