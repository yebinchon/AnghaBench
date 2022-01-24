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
struct iio_work_cont {int address; int mask; void* st; int /*<<< orphan*/  ws_nocheck; int /*<<< orphan*/  ws; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void (*) (struct work_struct*)) ; 

__attribute__((used)) static inline void
FUNC1(struct iio_work_cont *cont,
		   void (*_checkfunc)(struct work_struct *),
		   void (*_nocheckfunc)(struct work_struct *),
		   int _add, int _mask, void *_st)
{
	FUNC0(&(cont)->ws, _checkfunc);
	FUNC0(&(cont)->ws_nocheck, _nocheckfunc);
	cont->address = _add;
	cont->mask = _mask;
	cont->st = _st;
}