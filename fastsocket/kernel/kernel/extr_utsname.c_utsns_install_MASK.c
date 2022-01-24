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
struct nsproxy {void* uts_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(struct nsproxy *nsproxy, void *ns)
{
	FUNC0(ns);
	FUNC1(nsproxy->uts_ns);
	nsproxy->uts_ns = ns;
	return 0;
}