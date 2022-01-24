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
typedef  int __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int L2CAP_MODE_BASIC ; 
#define  L2CAP_MODE_ERTM 129 
#define  L2CAP_MODE_STREAMING 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline __u8 FUNC1(__u8 mode, __u16 remote_feat_mask)
{
	switch (mode) {
	case L2CAP_MODE_STREAMING:
	case L2CAP_MODE_ERTM:
		if (FUNC0(mode, remote_feat_mask))
			return mode;
		/* fall through */
	default:
		return L2CAP_MODE_BASIC;
	}
}