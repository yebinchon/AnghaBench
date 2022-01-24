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
struct fuse_conn {int dummy; } ;
struct cuse_conn {int dummy; } ;

/* Variables and functions */
 struct cuse_conn* FUNC0 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct cuse_conn*) ; 

__attribute__((used)) static void FUNC2(struct fuse_conn *fc)
{
	struct cuse_conn *cc = FUNC0(fc);
	FUNC1(cc);
}