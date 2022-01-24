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
struct file_security_struct {int dummy; } ;
struct file {struct file_security_struct* f_security; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file_security_struct*) ; 

__attribute__((used)) static void FUNC1(struct file *file)
{
	struct file_security_struct *fsec = file->f_security;
	file->f_security = NULL;
	FUNC0(fsec);
}