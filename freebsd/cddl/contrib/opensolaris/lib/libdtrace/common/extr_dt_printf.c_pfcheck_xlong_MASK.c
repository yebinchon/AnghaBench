#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  n ;
typedef  int /*<<< orphan*/  dt_pfargv_t ;
typedef  int /*<<< orphan*/  dt_pfargd_t ;
struct TYPE_3__ {int /*<<< orphan*/  dn_type; int /*<<< orphan*/ * dn_ctfp; } ;
typedef  TYPE_1__ dt_node_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;

/* Variables and functions */
 int DT_TYPE_NAMELEN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(dt_pfargv_t *pfv, dt_pfargd_t *pfd, dt_node_t *dnp)
{
	ctf_file_t *ctfp = dnp->dn_ctfp;
	ctf_id_t type = FUNC1(ctfp, dnp->dn_type);
	char n[DT_TYPE_NAMELEN];

	return (FUNC0(ctfp, type, n, sizeof (n)) != NULL && (
	    FUNC2(n, "long") == 0 || FUNC2(n, "signed long") == 0 ||
	    FUNC2(n, "unsigned long") == 0));
}