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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock_X1 ; 
 int /*<<< orphan*/  lock_X2 ; 
 int /*<<< orphan*/  lock_Y1 ; 
 int /*<<< orphan*/  lock_Y2 ; 
 int /*<<< orphan*/  lock_Z1 ; 
 int /*<<< orphan*/  lock_Z2 ; 
 int /*<<< orphan*/  mutex_X1 ; 
 int /*<<< orphan*/  mutex_X2 ; 
 int /*<<< orphan*/  mutex_Y1 ; 
 int /*<<< orphan*/  mutex_Y2 ; 
 int /*<<< orphan*/  mutex_Z1 ; 
 int /*<<< orphan*/  mutex_Z2 ; 
 int /*<<< orphan*/  rwlock_X1 ; 
 int /*<<< orphan*/  rwlock_X2 ; 
 int /*<<< orphan*/  rwlock_Y1 ; 
 int /*<<< orphan*/  rwlock_Y2 ; 
 int /*<<< orphan*/  rwlock_Z1 ; 
 int /*<<< orphan*/  rwlock_Z2 ; 
 int /*<<< orphan*/  rwsem_X1 ; 
 int /*<<< orphan*/  rwsem_X2 ; 
 int /*<<< orphan*/  rwsem_Y1 ; 
 int /*<<< orphan*/  rwsem_Y2 ; 
 int /*<<< orphan*/  rwsem_Z1 ; 
 int /*<<< orphan*/  rwsem_Z2 ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC0(&lock_X1, &rwlock_X1, &mutex_X1, &rwsem_X1);
	FUNC0(&lock_X2, &rwlock_X2, &mutex_X2, &rwsem_X2);

	FUNC1(&lock_Y1, &rwlock_Y1, &mutex_Y1, &rwsem_Y1);
	FUNC1(&lock_Y2, &rwlock_Y2, &mutex_Y2, &rwsem_Y2);

	FUNC2(&lock_Z1, &rwlock_Z1, &mutex_Z1, &rwsem_Z1);
	FUNC2(&lock_Z2, &rwlock_Z2, &mutex_Z2, &rwsem_Z2);
}