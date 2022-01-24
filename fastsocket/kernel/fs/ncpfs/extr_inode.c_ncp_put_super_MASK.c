#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;
struct TYPE_6__ {struct ncp_server* object_name; } ;
struct TYPE_5__ {struct ncp_server* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  wdog_pid; } ;
struct ncp_server {int /*<<< orphan*/  packet; int /*<<< orphan*/  txbuf; int /*<<< orphan*/  rxbuf; TYPE_3__ auth; TYPE_2__ priv; TYPE_1__ m; scalar_t__ ncp_filp; scalar_t__ info_filp; int /*<<< orphan*/  nls_io; int /*<<< orphan*/  nls_vol; } ;

/* Variables and functions */
 struct ncp_server* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ncp_server*) ; 
 int /*<<< orphan*/  FUNC6 (struct ncp_server*) ; 
 int /*<<< orphan*/  FUNC7 (struct ncp_server*) ; 
 int /*<<< orphan*/  FUNC8 (struct ncp_server*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct super_block *sb)
{
	struct ncp_server *server = FUNC0(sb);

	FUNC4();

	FUNC6(server);
	FUNC5(server);
	FUNC8(server);

	FUNC7(server);

#ifdef CONFIG_NCPFS_NLS
	/* unload the NLS charsets */
	unload_nls(server->nls_vol);
	unload_nls(server->nls_io);
#endif /* CONFIG_NCPFS_NLS */

	if (server->info_filp)
		FUNC1(server->info_filp);
	FUNC1(server->ncp_filp);
	FUNC3(server->m.wdog_pid, SIGTERM, 1);
	FUNC9(server->m.wdog_pid);

	FUNC2(server->priv.data);
	FUNC2(server->auth.object_name);
	FUNC12(server->rxbuf);
	FUNC12(server->txbuf);
	FUNC12(server->packet);
	sb->s_fs_info = NULL;
	FUNC2(server);

	FUNC11();
}