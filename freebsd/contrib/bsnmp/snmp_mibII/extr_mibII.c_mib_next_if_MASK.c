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
struct mibif {int dummy; } ;

/* Variables and functions */
 struct mibif* FUNC0 (struct mibif const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 

struct mibif *
FUNC1(const struct mibif *ifp)
{
	return (FUNC0(ifp, link));
}