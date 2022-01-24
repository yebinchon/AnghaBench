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
struct poll_table_struct {int dummy; } ;
struct file {struct cachefiles_cache* private_data; } ;
struct cachefiles_cache {int /*<<< orphan*/  flags; int /*<<< orphan*/  daemon_pollwq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHEFILES_CULLING ; 
 int /*<<< orphan*/  CACHEFILES_STATE_CHANGED ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC2(struct file *file,
					   struct poll_table_struct *poll)
{
	struct cachefiles_cache *cache = file->private_data;
	unsigned int mask;

	FUNC0(file, &cache->daemon_pollwq, poll);
	mask = 0;

	if (FUNC1(CACHEFILES_STATE_CHANGED, &cache->flags))
		mask |= POLLIN;

	if (FUNC1(CACHEFILES_CULLING, &cache->flags))
		mask |= POLLOUT;

	return mask;
}