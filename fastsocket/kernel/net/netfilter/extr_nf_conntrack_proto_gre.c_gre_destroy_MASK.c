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
struct nf_conn {struct nf_conn* master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct nf_conn *ct)
{
	struct nf_conn *master = ct->master;
	FUNC1(" entering\n");

	if (!master)
		FUNC1("no master !?!\n");
	else
		FUNC0(master);
}