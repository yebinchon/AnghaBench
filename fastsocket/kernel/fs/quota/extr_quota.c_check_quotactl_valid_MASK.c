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
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  qid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct super_block*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ,struct super_block*) ; 
 int FUNC3 (struct super_block*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb, int type, int cmd,
				qid_t id)
{
	int error;

	if (FUNC0(cmd))
		error = FUNC3(sb, type, cmd, id);
	else
		error = FUNC1(sb, type, cmd, id);
	if (!error)
		error = FUNC2(cmd, type, id, sb);
	return error;
}