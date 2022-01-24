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
struct se_cmd {struct iblock_req* priv; } ;
struct iblock_req {int /*<<< orphan*/  ib_bio_err_cnt; } ;
struct bio {int /*<<< orphan*/  bi_flags; struct se_cmd* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct bio*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct bio *bio, int err)
{
	struct se_cmd *cmd = bio->bi_private;
	struct iblock_req *ibr = cmd->priv;

	/*
	 * Set -EIO if !BIO_UPTODATE and the passed is still err=0
	 */
	if (!FUNC5(BIO_UPTODATE, &bio->bi_flags) && !err)
		err = -EIO;

	if (err != 0) {
		FUNC3("test_bit(BIO_UPTODATE) failed for bio: %p,"
			" err: %d\n", bio, err);
		/*
		 * Bump the ib_bio_err_cnt and release bio.
		 */
		FUNC0(&ibr->ib_bio_err_cnt);
		FUNC4();
	}

	FUNC1(bio);

	FUNC2(cmd);
}