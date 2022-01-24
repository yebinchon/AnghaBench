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
struct o2hb_bio_wait_ctxt {scalar_t__ wc_error; int /*<<< orphan*/  wc_io_complete; int /*<<< orphan*/  wc_num_reqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct o2hb_bio_wait_ctxt *wc)
{
	FUNC0(&wc->wc_num_reqs, 1);
	FUNC1(&wc->wc_io_complete);
	wc->wc_error = 0;
}