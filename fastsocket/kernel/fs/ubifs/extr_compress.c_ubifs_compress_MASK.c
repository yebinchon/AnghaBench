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
struct ubifs_compressor {int /*<<< orphan*/  name; scalar_t__ comp_mutex; int /*<<< orphan*/  cc; } ;

/* Variables and functions */
 int UBIFS_COMPR_NONE ; 
 int UBIFS_MIN_COMPRESS_DIFF ; 
 int UBIFS_MIN_COMPR_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,void const*,int,void*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct ubifs_compressor** ubifs_compressors ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(const void *in_buf, int in_len, void *out_buf, int *out_len,
		    int *compr_type)
{
	int err;
	struct ubifs_compressor *compr = ubifs_compressors[*compr_type];

	if (*compr_type == UBIFS_COMPR_NONE)
		goto no_compr;

	/* If the input data is small, do not even try to compress it */
	if (in_len < UBIFS_MIN_COMPR_LEN)
		goto no_compr;

	if (compr->comp_mutex)
		FUNC2(compr->comp_mutex);
	err = FUNC0(compr->cc, in_buf, in_len, out_buf,
				   (unsigned int *)out_len);
	if (compr->comp_mutex)
		FUNC3(compr->comp_mutex);
	if (FUNC5(err)) {
		FUNC4("cannot compress %d bytes, compressor %s, "
			   "error %d, leave data uncompressed",
			   in_len, compr->name, err);
		 goto no_compr;
	}

	/*
	 * If the data compressed only slightly, it is better to leave it
	 * uncompressed to improve read speed.
	 */
	if (in_len - *out_len < UBIFS_MIN_COMPRESS_DIFF)
		goto no_compr;

	return;

no_compr:
	FUNC1(out_buf, in_buf, in_len);
	*out_len = in_len;
	*compr_type = UBIFS_COMPR_NONE;
}