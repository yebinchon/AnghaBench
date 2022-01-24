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
struct bio {int /*<<< orphan*/  (* bi_end_io ) (struct bio*,int) ;int /*<<< orphan*/  bi_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct bio *bio, int error)
{
	if (error)
		FUNC0(BIO_UPTODATE, &bio->bi_flags);
	else if (!FUNC2(BIO_UPTODATE, &bio->bi_flags))
		error = -EIO;

	if (bio->bi_end_io)
		bio->bi_end_io(bio, error);
}