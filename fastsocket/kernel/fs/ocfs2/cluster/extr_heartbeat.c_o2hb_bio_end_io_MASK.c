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
struct o2hb_bio_wait_ctxt {int wc_error; } ;
struct bio {struct o2hb_bio_wait_ctxt* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct o2hb_bio_wait_ctxt*,int) ; 

__attribute__((used)) static void FUNC3(struct bio *bio,
			   int error)
{
	struct o2hb_bio_wait_ctxt *wc = bio->bi_private;

	if (error) {
		FUNC1(ML_ERROR, "IO Error %d\n", error);
		wc->wc_error = error;
	}

	FUNC2(wc, 1);
	FUNC0(bio);
}