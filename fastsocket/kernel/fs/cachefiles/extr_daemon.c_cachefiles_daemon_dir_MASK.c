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
struct cachefiles_cache {char* rootdirname; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cachefiles_cache *cache, char *args)
{
	char *dir;

	FUNC0(",%s", args);

	if (!*args) {
		FUNC1("Empty directory specified");
		return -EINVAL;
	}

	if (cache->rootdirname) {
		FUNC1("Second cache directory specified");
		return -EEXIST;
	}

	dir = FUNC2(args, GFP_KERNEL);
	if (!dir)
		return -ENOMEM;

	cache->rootdirname = dir;
	return 0;
}