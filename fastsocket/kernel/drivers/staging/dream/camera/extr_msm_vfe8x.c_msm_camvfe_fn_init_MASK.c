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
struct msm_camvfe_fn {int /*<<< orphan*/  vfe_release; int /*<<< orphan*/  vfe_disable; int /*<<< orphan*/  vfe_config; int /*<<< orphan*/  vfe_enable; int /*<<< orphan*/  vfe_init; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfe_config ; 
 int /*<<< orphan*/  vfe_disable ; 
 int /*<<< orphan*/  vfe_enable ; 
 int /*<<< orphan*/  vfe_init ; 
 int /*<<< orphan*/  vfe_lock ; 
 int /*<<< orphan*/  vfe_release ; 
 void* vfe_syncdata ; 

void FUNC1(struct msm_camvfe_fn *fptr, void *data)
{
	FUNC0(&vfe_lock);
	fptr->vfe_init    = vfe_init;
	fptr->vfe_enable  = vfe_enable;
	fptr->vfe_config  = vfe_config;
	fptr->vfe_disable = vfe_disable;
	fptr->vfe_release = vfe_release;
	vfe_syncdata = data;
}