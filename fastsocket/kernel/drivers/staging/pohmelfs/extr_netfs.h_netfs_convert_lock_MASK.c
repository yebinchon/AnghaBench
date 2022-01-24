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
struct netfs_lock {void* type; void* size; void* ino; void* start; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static inline void FUNC2(struct netfs_lock *lock)
{
	lock->start = FUNC1(lock->start);
	lock->ino = FUNC1(lock->ino);
	lock->size = FUNC0(lock->size);
	lock->type = FUNC0(lock->type);
}