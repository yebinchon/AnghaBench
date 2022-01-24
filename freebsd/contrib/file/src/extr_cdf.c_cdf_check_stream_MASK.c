#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ sst_dirlen; size_t sst_ss; } ;
typedef  TYPE_1__ cdf_stream_t ;
struct TYPE_8__ {scalar_t__ h_min_size_standard_stream; } ;
typedef  TYPE_2__ cdf_header_t ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__ const*) ; 
 size_t FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static size_t
FUNC3(const cdf_stream_t *sst, const cdf_header_t *h)
{
	size_t ss = sst->sst_dirlen < h->h_min_size_standard_stream ?
	    FUNC1(h) : FUNC0(h);
	FUNC2(ss == sst->sst_ss);
	return sst->sst_ss;
}