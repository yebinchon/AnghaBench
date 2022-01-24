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
struct hd_struct {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct hd_struct* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct hd_struct*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct hd_struct *p = FUNC0(dev);
	FUNC1(p);
	FUNC2(p);
}