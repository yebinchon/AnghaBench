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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  S3C_D0EPCTL_MPS_16 ; 
 int /*<<< orphan*/  S3C_D0EPCTL_MPS_32 ; 
 int /*<<< orphan*/  S3C_D0EPCTL_MPS_64 ; 
 int /*<<< orphan*/  S3C_D0EPCTL_MPS_8 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static u32 FUNC1(unsigned int mps)
{
	switch (mps) {
	case 64:
		return S3C_D0EPCTL_MPS_64;
	case 32:
		return S3C_D0EPCTL_MPS_32;
	case 16:
		return S3C_D0EPCTL_MPS_16;
	case 8:
		return S3C_D0EPCTL_MPS_8;
	}

	/* bad max packet size, warn and return invalid result */
	FUNC0(1);
	return (u32)-1;
}