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

/* Variables and functions */
 int /*<<< orphan*/  cifs_req_cachep ; 
 int /*<<< orphan*/  cifs_req_poolp ; 
 int /*<<< orphan*/  cifs_sm_req_cachep ; 
 int /*<<< orphan*/  cifs_sm_req_poolp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(cifs_req_poolp);
	FUNC0(cifs_req_cachep);
	FUNC1(cifs_sm_req_poolp);
	FUNC0(cifs_sm_req_cachep);
}