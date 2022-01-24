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
struct dccp_ackvec {int /*<<< orphan*/  av_records; scalar_t__ av_vec_len; int /*<<< orphan*/  av_time; scalar_t__ av_buf_nonce; scalar_t__ av_buf_ackno; scalar_t__ av_buf_head; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ DCCP_MAX_ACKVEC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ UINT48_MAX ; 
 int /*<<< orphan*/  dccp_ackvec_slab ; 
 struct dccp_ackvec* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct dccp_ackvec *FUNC3(const gfp_t priority)
{
	struct dccp_ackvec *av = FUNC1(dccp_ackvec_slab, priority);

	if (av != NULL) {
		av->av_buf_head	 = DCCP_MAX_ACKVEC_LEN - 1;
		av->av_buf_ackno = UINT48_MAX + 1;
		av->av_buf_nonce = 0;
		av->av_time	 = FUNC2(0, 0);
		av->av_vec_len	 = 0;
		FUNC0(&av->av_records);
	}

	return av;
}