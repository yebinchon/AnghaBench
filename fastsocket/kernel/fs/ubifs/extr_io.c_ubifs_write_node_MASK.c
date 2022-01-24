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
struct ubifs_info {int min_io_size; int leb_cnt; int leb_size; int /*<<< orphan*/  ubi; scalar_t__ ro_media; } ;
struct ubifs_ch {int /*<<< orphan*/  node_type; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,void*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,void*,int,int) ; 

int FUNC9(struct ubifs_info *c, void *buf, int len, int lnum,
		     int offs, int dtype)
{
	int err, buf_len = FUNC0(len, c->min_io_size);

	FUNC3("LEB %d:%d, %s, length %d (aligned %d)",
	       lnum, offs, FUNC4(((struct ubifs_ch *)buf)->node_type), len,
	       buf_len);
	FUNC6(lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
	FUNC6(offs % c->min_io_size == 0 && offs < c->leb_size);

	if (c->ro_media)
		return -EROFS;

	FUNC8(c, buf, len, 1);
	err = FUNC5(c->ubi, lnum, buf, offs, buf_len, dtype);
	if (err) {
		FUNC7("cannot write %d bytes to LEB %d:%d, error %d",
			  buf_len, lnum, offs, err);
		FUNC1(c, buf);
		FUNC2();
	}

	return err;
}