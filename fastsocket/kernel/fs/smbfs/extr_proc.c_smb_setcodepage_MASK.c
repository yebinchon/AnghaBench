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
struct smb_sb_info {TYPE_1__* ops; int /*<<< orphan*/ * remote_nls; int /*<<< orphan*/ * local_nls; } ;
struct smb_nls_codepage {int /*<<< orphan*/ * remote_name; int /*<<< orphan*/ * local_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  convert; } ;

/* Variables and functions */
 int /*<<< orphan*/  convert_cp ; 
 int /*<<< orphan*/  convert_memcpy ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  unicode_table ; 

int FUNC4(struct smb_sb_info *server, struct smb_nls_codepage *cp)
{
	int n = 0;

	FUNC1(server);

	/* Don't load any nls_* at all, if no remote is requested */
	if (!*cp->remote_name)
		goto out;

	/* local */
	n = FUNC0(&server->local_nls, cp->local_name);
	if (n != 0)
		goto out;

	/* remote */
	if (!FUNC3(cp->remote_name, "unicode")) {
		server->remote_nls = &unicode_table;
	} else {
		n = FUNC0(&server->remote_nls, cp->remote_name);
		if (n != 0)
			FUNC0(&server->local_nls, NULL);
	}

out:
	if (server->local_nls != NULL && server->remote_nls != NULL)
		server->ops->convert = convert_cp;
	else
		server->ops->convert = convert_memcpy;

	FUNC2(server);
	return n;
}