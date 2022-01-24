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
typedef  int u8 ;
struct wlp_options {int pca_base_priority; int /*<<< orphan*/  def_tx_hdr; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int WLP_DRP ; 
 int FUNC0 (char const*,char*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

ssize_t FUNC3(struct wlp_options *options,
				    const char *buf, size_t size)
{
	ssize_t result = -EINVAL;
	u8 pca_base_priority;

	result = FUNC0(buf, "%hhu\n", &pca_base_priority);
	if (result != 1) {
		result = -EINVAL;
		goto out;
	}
	result = -EINVAL;
	if (pca_base_priority >= 8)
		goto out;
	options->pca_base_priority = pca_base_priority;
	/* Update TX header if we are currently using PCA. */
	if (result >= 0 && (FUNC1(&options->def_tx_hdr) & WLP_DRP) == 0)
		FUNC2(&options->def_tx_hdr, options->pca_base_priority);
	result = 0;
out:
	return result < 0 ? result : size;
}