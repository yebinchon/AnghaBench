#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct hash_desc {int /*<<< orphan*/  tfm; } ;
struct file {TYPE_1__* f_dentry; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hash_desc*,char*) ; 
 int FUNC2 (struct hash_desc*,struct scatterlist*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hash_desc*) ; 
 int FUNC5 (struct file*,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,char*,int) ; 

int FUNC9(struct file *file, char *digest)
{
	struct hash_desc desc;
	struct scatterlist sg[1];
	loff_t i_size, offset = 0;
	char *rbuf;
	int rc;

	rc = FUNC4(&desc);
	if (rc != 0)
		return rc;

	rbuf = FUNC7(PAGE_SIZE, GFP_KERNEL);
	if (!rbuf) {
		rc = -ENOMEM;
		goto out;
	}
	i_size = FUNC3(file->f_dentry->d_inode);
	while (offset < i_size) {
		int rbuf_len;

		rbuf_len = FUNC5(file, offset, rbuf, PAGE_SIZE);
		if (rbuf_len < 0) {
			rc = rbuf_len;
			break;
		}
		if (rbuf_len == 0)
			break;
		offset += rbuf_len;
		FUNC8(sg, rbuf, rbuf_len);

		rc = FUNC2(&desc, sg, rbuf_len);
		if (rc)
			break;
	}
	FUNC6(rbuf);
	if (!rc)
		rc = FUNC1(&desc, digest);
out:
	FUNC0(desc.tfm);
	return rc;
}