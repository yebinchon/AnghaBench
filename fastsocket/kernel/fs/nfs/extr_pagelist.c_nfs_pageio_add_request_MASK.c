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
struct nfs_pageio_descriptor {scalar_t__ pg_error; } ;
struct nfs_page {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int FUNC1 (struct nfs_pageio_descriptor*) ; 

int FUNC2(struct nfs_pageio_descriptor *desc,
		struct nfs_page *req)
{
	int ret;

	do {
		ret = FUNC0(desc, req);
		if (ret)
			break;
		if (desc->pg_error < 0)
			break;
		ret = FUNC1(desc);
	} while (ret);
	return ret;
}