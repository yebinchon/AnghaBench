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
struct exofs_dir_entry {int /*<<< orphan*/  rec_len; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline
struct exofs_dir_entry *FUNC1(struct exofs_dir_entry *p)
{
	return (struct exofs_dir_entry *)((char *)p + FUNC0(p->rec_len));
}