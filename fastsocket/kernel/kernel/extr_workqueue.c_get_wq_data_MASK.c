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
struct work_struct {int /*<<< orphan*/  data; } ;
typedef  void cpu_workqueue_struct ;

/* Variables and functions */
 int WORK_STRUCT_WQ_DATA_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline
struct cpu_workqueue_struct *FUNC1(struct work_struct *work)
{
	return (void *) (FUNC0(&work->data) & WORK_STRUCT_WQ_DATA_MASK);
}