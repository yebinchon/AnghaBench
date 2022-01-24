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
struct seq_file {int dummy; } ;
struct gss_api_mech {int /*<<< orphan*/ * gm_upcall_enctypes; } ;

/* Variables and functions */
 struct gss_api_mech* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gss_api_mech*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	struct gss_api_mech *k5mech;

	k5mech = FUNC0("krb5");
	if (k5mech == NULL)
		goto out;
	if (k5mech->gm_upcall_enctypes != NULL)
		FUNC2(m, k5mech->gm_upcall_enctypes);
	FUNC1(k5mech);
out:
	return 0;
}