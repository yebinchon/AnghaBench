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
struct nlm_host {int dummy; } ;
struct nlm_file {int dummy; } ;
typedef  int /*<<< orphan*/  nlm_host_match_fn_t ;

/* Variables and functions */
 int FUNC0 (struct nlm_host*,struct nlm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_host*,struct nlm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_host*,struct nlm_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC3(struct nlm_host *host, struct nlm_file *file, nlm_host_match_fn_t match)
{
	FUNC1(host, file, match);
	FUNC2(host, file, match);
	return FUNC0(host, file, match);
}