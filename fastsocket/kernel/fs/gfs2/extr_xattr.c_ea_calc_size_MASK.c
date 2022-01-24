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
struct gfs2_sbd {unsigned int sd_jbsize; } ;
struct gfs2_ea_header {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 unsigned int FUNC0 (int,int) ; 
 int FUNC1 (size_t,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct gfs2_sbd *sdp, unsigned int nsize, size_t dsize,
			unsigned int *size)
{
	unsigned int jbsize = sdp->sd_jbsize;

	/* Stuffed */
	*size = FUNC0(sizeof(struct gfs2_ea_header) + nsize + dsize, 8);

	if (*size <= jbsize)
		return 1;

	/* Unstuffed */
	*size = FUNC0(sizeof(struct gfs2_ea_header) + nsize +
		      (sizeof(__be64) * FUNC1(dsize, jbsize)), 8);

	return 0;
}