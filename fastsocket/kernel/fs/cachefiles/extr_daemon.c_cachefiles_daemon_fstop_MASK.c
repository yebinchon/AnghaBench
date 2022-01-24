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
struct cachefiles_cache {unsigned long fcull_percent; unsigned long fstop_percent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (struct cachefiles_cache*,char*) ; 
 unsigned long FUNC2 (char*,char**,int) ; 

__attribute__((used)) static int FUNC3(struct cachefiles_cache *cache, char *args)
{
	unsigned long fstop;

	FUNC0(",%s", args);

	if (!*args)
		return -EINVAL;

	fstop = FUNC2(args, &args, 10);
	if (args[0] != '%' || args[1] != '\0')
		return -EINVAL;

	if (fstop < 0 || fstop >= cache->fcull_percent)
		return FUNC1(cache, args);

	cache->fstop_percent = fstop;
	return 0;
}