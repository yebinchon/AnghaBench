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
struct slob_page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void const*) ; 

__attribute__((used)) static inline struct slob_page *FUNC1(const void *addr)
{
	return (struct slob_page *)FUNC0(addr);
}