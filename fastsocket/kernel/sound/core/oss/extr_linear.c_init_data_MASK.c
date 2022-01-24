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
struct linear_priv {int dst_bytes; int cvt_endian; int copy_bytes; int copy_ofs; int src_ofs; int dst_ofs; int /*<<< orphan*/  flip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct linear_priv *data, int src_format, int dst_format)
{
	int src_le, dst_le, src_bytes, dst_bytes;

	src_bytes = FUNC5(src_format) / 8;
	dst_bytes = FUNC5(dst_format) / 8;
	src_le = FUNC2(src_format) > 0;
	dst_le = FUNC2(dst_format) > 0;

	data->dst_bytes = dst_bytes;
	data->cvt_endian = src_le != dst_le;
	data->copy_bytes = src_bytes < dst_bytes ? src_bytes : dst_bytes;
	if (src_le) {
		data->copy_ofs = 4 - data->copy_bytes;
		data->src_ofs = src_bytes - data->copy_bytes;
	} else
		data->src_ofs = FUNC3(src_format) / 8 -
			src_bytes;
	if (dst_le)
		data->dst_ofs = 4 - data->dst_bytes;
	else
		data->dst_ofs = FUNC3(dst_format) / 8 -
			dst_bytes;
	if (FUNC4(src_format) !=
	    FUNC4(dst_format)) {
		if (dst_le)
			data->flip = FUNC1(0x80000000);
		else
			data->flip = FUNC0(0x80000000);
	}
}