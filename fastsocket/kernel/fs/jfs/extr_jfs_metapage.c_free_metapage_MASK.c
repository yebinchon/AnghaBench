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
struct metapage {scalar_t__ flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  META_free ; 
 int /*<<< orphan*/  FUNC0 (struct metapage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  metapage_mempool ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static inline void FUNC2(struct metapage *mp)
{
	mp->flag = 0;
	FUNC1(META_free, &mp->flag);

	FUNC0(mp, metapage_mempool);
}