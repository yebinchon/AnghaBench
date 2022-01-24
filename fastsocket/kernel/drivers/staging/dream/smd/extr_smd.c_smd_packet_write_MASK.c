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
typedef  int /*<<< orphan*/  smd_channel_t ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ SMD_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(smd_channel_t *ch, const void *_data, int len)
{
	unsigned hdr[5];

	if (len < 0)
		return -EINVAL;

	if (FUNC1(ch) < (len + SMD_HEADER_SIZE))
		return -ENOMEM;

	hdr[0] = len;
	hdr[1] = hdr[2] = hdr[3] = hdr[4] = 0;

	FUNC0(ch, hdr, sizeof(hdr));
	FUNC0(ch, _data, len);

	return len;
}