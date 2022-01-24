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
struct devname_cache {scalar_t__ device; char* devname; int /*<<< orphan*/  rcu; } ;
struct block_device {int dummy; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_SIZE_BITS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*,char*) ; 
 struct block_device* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct devname_cache** devcache ; 
 int /*<<< orphan*/  devname_cache_lock ; 
 int /*<<< orphan*/  free_devcache ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct devname_cache*) ; 
 struct devname_cache* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

const char *FUNC12(dev_t device)
{
	int	i = FUNC5(device, CACHE_SIZE_BITS);
	char	*ret;
	struct block_device *bd;
	static struct devname_cache *new_dev;

	FUNC8();
	if (devcache[i] && devcache[i]->device == device) {
		ret = devcache[i]->devname;
		FUNC9();
		return ret;
	}
	FUNC9();

	new_dev = FUNC7(sizeof(struct devname_cache), GFP_KERNEL);
	if (!new_dev)
		return "NODEV-ALLOCFAILURE"; /* Something non-NULL */
	FUNC10(&devname_cache_lock);
	if (devcache[i]) {
		if (devcache[i]->device == device) {
			FUNC6(new_dev);
			ret = devcache[i]->devname;
			FUNC11(&devname_cache_lock);
			return ret;
		}
		FUNC4(&devcache[i]->rcu, free_devcache);
	}
	devcache[i] = new_dev;
	devcache[i]->device = device;
	bd = FUNC2(device);
	if (bd) {
		FUNC1(bd, devcache[i]->devname);
		FUNC3(bd);
	} else
		FUNC0(device, devcache[i]->devname);
	ret = devcache[i]->devname;
	FUNC11(&devname_cache_lock);
	return ret;
}