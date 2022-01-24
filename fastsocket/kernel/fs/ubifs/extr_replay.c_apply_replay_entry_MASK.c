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
struct ubifs_info {scalar_t__ need_recovery; int /*<<< orphan*/  replay_sqnum; } ;
struct replay_entry {int flags; int /*<<< orphan*/  new_size; int /*<<< orphan*/  key; int /*<<< orphan*/  len; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; int /*<<< orphan*/  nm; int /*<<< orphan*/  sqnum; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int REPLAY_DELETION ; 
 int REPLAY_REF ; 
#define  UBIFS_INO_KEY 129 
#define  UBIFS_TRUN_KEY 128 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ubifs_info*,struct replay_entry*) ; 
 int FUNC6 (struct ubifs_info*,struct replay_entry*) ; 
 int FUNC7 (struct ubifs_info*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ubifs_info *c, struct replay_entry *r)
{
	int err, deletion = ((r->flags & REPLAY_DELETION) != 0);

	FUNC1("LEB %d:%d len %d flgs %d sqnum %llu %s", r->lnum,
		r->offs, r->len, r->flags, r->sqnum, FUNC0(&r->key));

	/* Set c->replay_sqnum to help deal with dangling branches. */
	c->replay_sqnum = r->sqnum;

	if (r->flags & REPLAY_REF)
		err = FUNC5(c, r);
	else if (FUNC2(c, &r->key)) {
		if (deletion)
			err = FUNC12(c, &r->key, &r->nm);
		else
			err = FUNC9(c, &r->key, r->lnum, r->offs,
					       r->len, &r->nm);
	} else {
		if (deletion)
			switch (FUNC4(c, &r->key)) {
			case UBIFS_INO_KEY:
			{
				ino_t inum = FUNC3(c, &r->key);

				err = FUNC11(c, inum);
				break;
			}
			case UBIFS_TRUN_KEY:
				err = FUNC6(c, r);
				break;
			default:
				err = FUNC10(c, &r->key);
				break;
			}
		else
			err = FUNC8(c, &r->key, r->lnum, r->offs,
					    r->len);
		if (err)
			return err;

		if (c->need_recovery)
			err = FUNC7(c, &r->key, deletion,
						       r->new_size);
	}

	return err;
}