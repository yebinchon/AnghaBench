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
typedef  void* u32 ;
struct file_security_struct {void* fown_sid; void* sid; } ;
struct file {struct file_security_struct* f_security; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 () ; 
 struct file_security_struct* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct file *file)
{
	struct file_security_struct *fsec;
	u32 sid = FUNC0();

	fsec = FUNC1(sizeof(struct file_security_struct), GFP_KERNEL);
	if (!fsec)
		return -ENOMEM;

	fsec->sid = sid;
	fsec->fown_sid = sid;
	file->f_security = fsec;

	return 0;
}