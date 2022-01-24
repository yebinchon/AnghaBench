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
struct tcf_proto {int dummy; } ;
struct fw_filter {int /*<<< orphan*/  exts; int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fw_filter*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcf_proto*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct tcf_proto *tp, struct fw_filter *f)
{
	FUNC2(tp, &f->res);
	FUNC1(tp, &f->exts);
	FUNC0(f);
}