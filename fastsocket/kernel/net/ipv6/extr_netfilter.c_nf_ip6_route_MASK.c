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
struct flowi {int dummy; } ;
struct dst_entry {int error; } ;

/* Variables and functions */
 int /*<<< orphan*/  init_net ; 
 struct dst_entry* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct flowi*) ; 

__attribute__((used)) static int FUNC1(struct dst_entry **dst, struct flowi *fl)
{
	*dst = FUNC0(&init_net, NULL, fl);
	return (*dst)->error;
}