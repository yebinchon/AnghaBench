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
struct svc_cacherep {int /*<<< orphan*/  c_lru; int /*<<< orphan*/  c_timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  RC_EXPIRE ; 
 int /*<<< orphan*/  cache_cleaner ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lru_head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct svc_cacherep *rp)
{
	rp->c_timestamp = jiffies;
	FUNC0(&rp->c_lru, &lru_head);
	FUNC1(&cache_cleaner, RC_EXPIRE);
}