#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rate_control_ref {TYPE_4__* ops; int /*<<< orphan*/  priv; struct ieee80211_local* local; } ;
struct TYPE_8__ {TYPE_1__* wiphy; } ;
struct TYPE_7__ {struct dentry* rcdir; } ;
struct ieee80211_local {TYPE_3__ hw; TYPE_2__ debugfs; } ;
struct dentry {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* alloc ) (TYPE_3__*,struct dentry*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  debugfsdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dentry* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct rate_control_ref*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct rate_control_ref*) ; 
 struct rate_control_ref* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcname_ops ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct dentry*) ; 

__attribute__((used)) static struct rate_control_ref *FUNC7(const char *name,
					    struct ieee80211_local *local)
{
	struct dentry *debugfsdir = NULL;
	struct rate_control_ref *ref;

	ref = FUNC5(sizeof(struct rate_control_ref), GFP_KERNEL);
	if (!ref)
		goto fail_ref;
	ref->local = local;
	ref->ops = FUNC2(name);
	if (!ref->ops)
		goto fail_ops;

#ifdef CONFIG_MAC80211_DEBUGFS
	debugfsdir = debugfs_create_dir("rc", local->hw.wiphy->debugfsdir);
	local->debugfs.rcdir = debugfsdir;
	debugfs_create_file("name", 0400, debugfsdir, ref, &rcname_ops);
#endif

	ref->priv = ref->ops->alloc(&local->hw, debugfsdir);
	if (!ref->priv)
		goto fail_priv;
	return ref;

fail_priv:
	FUNC3(ref->ops);
fail_ops:
	FUNC4(ref);
fail_ref:
	return NULL;
}