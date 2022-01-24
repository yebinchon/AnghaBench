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
typedef  int /*<<< orphan*/  u_char ;
struct kvec {unsigned char* iov_base; size_t iov_len; } ;
struct jffs2_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int FUNC0 (struct jffs2_sb_info*,int /*<<< orphan*/ ,size_t,size_t*,int /*<<< orphan*/  const*) ; 
 int FUNC1 (struct jffs2_sb_info*,struct kvec*,int,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_sb_info*) ; 

int FUNC3(struct jffs2_sb_info *c, loff_t ofs, size_t len,
		      size_t *retlen, const u_char *buf)
{
	struct kvec vecs[1];

	if (!FUNC2(c))
		return FUNC0(c, ofs, len, retlen, buf);

	vecs[0].iov_base = (unsigned char *) buf;
	vecs[0].iov_len = len;
	return FUNC1(c, vecs, 1, ofs, retlen, 0);
}