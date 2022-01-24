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
struct nfs_pgio_header {int dummy; } ;
struct nfs_pageio_descriptor {scalar_t__ pg_bsize; } ;

/* Variables and functions */
 scalar_t__ PAGE_CACHE_SIZE ; 
 int FUNC0 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ; 
 int FUNC1 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ; 

int FUNC2(struct nfs_pageio_descriptor *desc,
		      struct nfs_pgio_header *hdr)
{
	if (desc->pg_bsize < PAGE_CACHE_SIZE)
		return FUNC0(desc, hdr);
	return FUNC1(desc, hdr);
}