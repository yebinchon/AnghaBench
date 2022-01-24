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
struct ip_vs_stats_user {int dummy; } ;
struct ip_vs_stats {int /*<<< orphan*/  lock; int /*<<< orphan*/  ustats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_vs_stats_user*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ip_vs_stats_user *dst, struct ip_vs_stats *src)
{
	FUNC1(&src->lock);
	FUNC0(dst, &src->ustats, sizeof(*dst));
	FUNC2(&src->lock);
}