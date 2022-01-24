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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,int,int) ; 

__attribute__((used)) static inline void
FUNC1(struct mm_struct *mm, int file_rss, int anon_rss, int swap_usage)
{
	if (file_rss)
		FUNC0(mm, file_rss, file_rss);
	if (anon_rss)
		FUNC0(mm, anon_rss, anon_rss);
	if (swap_usage)
		FUNC0(mm, swap_usage, swap_usage);
}