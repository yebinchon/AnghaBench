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
struct rds_header {scalar_t__ h_csum; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int) ; 

__attribute__((used)) static inline void FUNC1(struct rds_header *hdr)
{
	hdr->h_csum = 0;
	hdr->h_csum = FUNC0((void *) hdr, sizeof(*hdr) >> 2);
}