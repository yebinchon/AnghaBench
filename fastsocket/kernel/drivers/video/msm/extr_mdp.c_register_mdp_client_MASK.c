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
struct class_interface {scalar_t__ class; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct class_interface*) ; 
 scalar_t__ mdp_class ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(struct class_interface *cint)
{
	if (!mdp_class) {
		FUNC1("mdp: no mdp_class when registering mdp client\n");
		return -ENODEV;
	}
	cint->class = mdp_class;
	return FUNC0(cint);
}