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
struct smb_hdr {int /*<<< orphan*/  smb_buf_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC1(void *pSMB, int count)
{
	struct smb_hdr *hdr = (struct smb_hdr *)pSMB;

	FUNC0(&hdr->smb_buf_length, count);
}