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
struct audit_watch {int /*<<< orphan*/  path; } ;
struct audit_krule {int /*<<< orphan*/  listnr; int /*<<< orphan*/  filterkey; } ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_CONFIG_CHANGE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ audit_enabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*,int /*<<< orphan*/ ) ; 
 struct audit_buffer* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct audit_buffer*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct audit_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 

__attribute__((used)) static void FUNC8(struct audit_krule *r, struct audit_watch *w, char *op)
{
	if (audit_enabled) {
		struct audit_buffer *ab;
		ab = FUNC5(NULL, GFP_NOFS, AUDIT_CONFIG_CHANGE);
		FUNC3(ab, "auid=%u ses=%u op=",
				 FUNC0(current),
				 FUNC1(current));
		FUNC6(ab, op);
		FUNC3(ab, " path=");
		FUNC7(ab, w->path);
		FUNC4(ab, r->filterkey);
		FUNC3(ab, " list=%d res=1", r->listnr);
		FUNC2(ab);
	}
}