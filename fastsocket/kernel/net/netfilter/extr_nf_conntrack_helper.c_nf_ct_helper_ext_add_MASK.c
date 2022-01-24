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
struct nf_conn_help {int /*<<< orphan*/  expectations; } ;
struct nf_conn {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NF_CT_EXT_HELPER ; 
 struct nf_conn_help* FUNC1 (struct nf_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

struct nf_conn_help *FUNC3(struct nf_conn *ct, gfp_t gfp)
{
	struct nf_conn_help *help;

	help = FUNC1(ct, NF_CT_EXT_HELPER, gfp);
	if (help)
		FUNC0(&help->expectations);
	else
		FUNC2("failed to add helper extension area");
	return help;
}