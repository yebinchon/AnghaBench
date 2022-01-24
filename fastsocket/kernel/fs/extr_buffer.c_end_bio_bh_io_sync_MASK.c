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
struct buffer_head {int /*<<< orphan*/  (* b_end_io ) (struct buffer_head*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  b_state; } ;
struct bio {int /*<<< orphan*/  bi_flags; struct buffer_head* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_Eopnotsupp ; 
 int /*<<< orphan*/  BH_Quiet ; 
 int /*<<< orphan*/  BIO_EOPNOTSUPP ; 
 int /*<<< orphan*/  BIO_QUIET ; 
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bio *bio, int err)
{
	struct buffer_head *bh = bio->bi_private;

	if (err == -EOPNOTSUPP) {
		FUNC1(BIO_EOPNOTSUPP, &bio->bi_flags);
		FUNC1(BH_Eopnotsupp, &bh->b_state);
	}

	if (FUNC4 (FUNC3(BIO_QUIET,&bio->bi_flags)))
		FUNC1(BH_Quiet, &bh->b_state);

	bh->b_end_io(bh, FUNC3(BIO_UPTODATE, &bio->bi_flags));
	FUNC0(bio);
}