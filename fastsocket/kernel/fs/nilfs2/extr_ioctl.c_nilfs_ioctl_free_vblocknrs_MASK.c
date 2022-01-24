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
struct the_nilfs {int dummy; } ;
struct nilfs_argv {size_t v_nmembs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct the_nilfs*) ; 

__attribute__((used)) static int FUNC2(struct the_nilfs *nilfs,
				      struct nilfs_argv *argv, void *buf)
{
	size_t nmembs = argv->v_nmembs;
	int ret;

	ret = FUNC0(FUNC1(nilfs), buf, nmembs);

	return (ret < 0) ? ret : nmembs;
}