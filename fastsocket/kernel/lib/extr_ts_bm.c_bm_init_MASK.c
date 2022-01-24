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
typedef  int /*<<< orphan*/  u8 ;
struct ts_config {int flags; } ;
struct ts_bm {unsigned int patlen; int /*<<< orphan*/ * pattern; scalar_t__ good_shift; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ts_config*) ; 
 int TS_IGNORECASE ; 
 struct ts_config* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ts_bm*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ts_bm* FUNC5 (struct ts_config*) ; 

__attribute__((used)) static struct ts_config *FUNC6(const void *pattern, unsigned int len,
				 gfp_t gfp_mask, int flags)
{
	struct ts_config *conf;
	struct ts_bm *bm;
	int i;
	unsigned int prefix_tbl_len = len * sizeof(unsigned int);
	size_t priv_size = sizeof(*bm) + len + prefix_tbl_len;

	conf = FUNC1(priv_size, gfp_mask);
	if (FUNC0(conf))
		return conf;

	conf->flags = flags;
	bm = FUNC5(conf);
	bm->patlen = len;
	bm->pattern = (u8 *) bm->good_shift + prefix_tbl_len;
	if (flags & TS_IGNORECASE)
		for (i = 0; i < len; i++)
			bm->pattern[i] = FUNC4(((u8 *)pattern)[i]);
	else
		FUNC3(bm->pattern, pattern, len);
	FUNC2(bm, flags);

	return conf;
}