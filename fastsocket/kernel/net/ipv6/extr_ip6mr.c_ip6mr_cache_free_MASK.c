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
struct mfc6_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mfc6_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct mfc6_cache*) ; 
 int /*<<< orphan*/  mrt_cachep ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct mfc6_cache *c)
{
	FUNC2(FUNC1(c));
	FUNC0(mrt_cachep, c);
}