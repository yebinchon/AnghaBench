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
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct cs4297a_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs4297a_state*) ; 

__attribute__((used)) static int FUNC1(struct inode *inode, struct file *file)
{
	struct cs4297a_state *s =
	    (struct cs4297a_state *) file->private_data;

	FUNC0(s);
	return 0;
}