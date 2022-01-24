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
struct net_device {int /*<<< orphan*/  name; void* priv; } ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RT_DEBUG_ERROR ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

struct net_device *FUNC4(
	int sizeof_priv,
	const char *mask,
	void (*setup)(struct net_device *))
{
    struct net_device	*dev;
    INT					alloc_size;


    /* ensure 32-byte alignment of the private area */
    alloc_size = sizeof (*dev) + sizeof_priv + 31;

    dev = (struct net_device *) FUNC1(alloc_size, GFP_KERNEL);
    if (dev == NULL)
    {
        FUNC0(RT_DEBUG_ERROR,
				("alloc_netdev: Unable to allocate device memory.\n"));
        return NULL;
    }

    FUNC2(dev, 0, alloc_size);

    if (sizeof_priv)
        dev->priv = (void *) (((long)(dev + 1) + 31) & ~31);

    setup(dev);
    FUNC3(dev->name, mask);

    return dev;
}