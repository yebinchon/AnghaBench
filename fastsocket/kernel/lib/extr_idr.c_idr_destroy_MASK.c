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

/* Variables and functions */
 struct idr_layer* FUNC0 (struct idr*) ; 
 int /*<<< orphan*/  idr_layer_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct idr_layer*) ; 

void FUNC2(struct idr *idp)
{
	while (idp->id_free_cnt) {
		struct idr_layer *p = FUNC0(idp);
		FUNC1(idr_layer_cache, p);
	}
}