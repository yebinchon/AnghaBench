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
struct usb_bus {int busnum; } ;
struct mon_bus {struct dentry* dent_t; struct dentry* dent_u; struct dentry* dent_s; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (char*,int,int /*<<< orphan*/ ,struct mon_bus*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  mon_dir ; 
 int /*<<< orphan*/  mon_fops_stat ; 
 int /*<<< orphan*/  mon_fops_text_t ; 
 int /*<<< orphan*/  mon_fops_text_u ; 
 int FUNC2 (char*,int,char*,int) ; 

int FUNC3(struct mon_bus *mbus, const struct usb_bus *ubus)
{
	struct dentry *d;
	enum { NAMESZ = 10 };
	char name[NAMESZ];
	int busnum = ubus? ubus->busnum: 0;
	int rc;

	if (ubus != NULL) {
		rc = FUNC2(name, NAMESZ, "%dt", busnum);
		if (rc <= 0 || rc >= NAMESZ)
			goto err_print_t;
		d = FUNC0(name, 0600, mon_dir, mbus,
							     &mon_fops_text_t);
		if (d == NULL)
			goto err_create_t;
		mbus->dent_t = d;
	}

	rc = FUNC2(name, NAMESZ, "%du", busnum);
	if (rc <= 0 || rc >= NAMESZ)
		goto err_print_u;
	d = FUNC0(name, 0600, mon_dir, mbus, &mon_fops_text_u);
	if (d == NULL)
		goto err_create_u;
	mbus->dent_u = d;

	rc = FUNC2(name, NAMESZ, "%ds", busnum);
	if (rc <= 0 || rc >= NAMESZ)
		goto err_print_s;
	d = FUNC0(name, 0600, mon_dir, mbus, &mon_fops_stat);
	if (d == NULL)
		goto err_create_s;
	mbus->dent_s = d;

	return 1;

err_create_s:
err_print_s:
	FUNC1(mbus->dent_u);
	mbus->dent_u = NULL;
err_create_u:
err_print_u:
	if (ubus != NULL) {
		FUNC1(mbus->dent_t);
		mbus->dent_t = NULL;
	}
err_create_t:
err_print_t:
	return 0;
}