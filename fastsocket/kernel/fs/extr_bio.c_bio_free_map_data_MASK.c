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
struct bio_map_data {struct bio_map_data* sgvecs; struct bio_map_data* iovecs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio_map_data*) ; 

__attribute__((used)) static void FUNC1(struct bio_map_data *bmd)
{
	FUNC0(bmd->iovecs);
	FUNC0(bmd->sgvecs);
	FUNC0(bmd);
}