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
struct rt6_info {int dummy; } ;
struct dst_ops {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dst_ops*) ; 

__attribute__((used)) static inline struct rt6_info *FUNC1(struct dst_ops *ops)
{
	return (struct rt6_info *)FUNC0(ops);
}