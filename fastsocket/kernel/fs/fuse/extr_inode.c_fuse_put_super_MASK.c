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
struct fuse_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_conn*) ; 
 struct fuse_conn* FUNC3 (struct super_block*) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb)
{
	struct fuse_conn *fc = FUNC3(sb);

	FUNC2(fc);
	FUNC0(fc);
	FUNC1(fc);
}