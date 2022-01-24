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
struct idr_layer {int dummy; } ;
struct idr {scalar_t__ id_free_cnt; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ IDR_FREE_MAX ; 
 int /*<<< orphan*/  idr_layer_cache ; 
 struct idr_layer* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct idr*,struct idr_layer*) ; 

int FUNC2(struct idr *idp, gfp_t gfp_mask)
{
	while (idp->id_free_cnt < IDR_FREE_MAX) {
		struct idr_layer *new;
		new = FUNC0(idr_layer_cache, gfp_mask);
		if (new == NULL)
			return (0);
		FUNC1(idp, new);
	}
	return 1;
}