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
struct policy_load_memory {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct file {struct policy_load_memory* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct policy_load_memory*) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SECURITY__READ_POLICY ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct policy_load_memory*) ; 
 struct policy_load_memory* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int policy_opened ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sel_mutex ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct file *filp)
{
	struct policy_load_memory *plm = NULL;
	int rc;

	FUNC0(filp->private_data);

	FUNC5(&sel_mutex);

	rc = FUNC9(current, SECURITY__READ_POLICY);
	if (rc)
		goto err;

	rc = -EBUSY;
	if (policy_opened)
		goto err;

	rc = -ENOMEM;
	plm = FUNC4(sizeof(*plm), GFP_KERNEL);
	if (!plm)
		goto err;

	if (FUNC1(inode) != FUNC7()) {
		FUNC5(&inode->i_mutex);
		FUNC2(inode, FUNC7());
		FUNC6(&inode->i_mutex);
	}

	rc = FUNC8(&plm->data, &plm->len);
	if (rc)
		goto err;

	policy_opened = 1;

	filp->private_data = plm;

	FUNC6(&sel_mutex);

	return 0;
err:
	FUNC6(&sel_mutex);

	if (plm)
		FUNC10(plm->data);
	FUNC3(plm);
	return rc;
}