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
typedef  int uint32_t ;
struct mx3fb_info {struct mx3fb_data* mx3fb; } ;
struct mx3fb_data {int dummy; } ;

/* Variables and functions */
 int SDC_COM_BG_EN ; 
 int /*<<< orphan*/  SDC_COM_CONF ; 
 int FUNC0 (struct mx3fb_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mx3fb_data*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC2(struct mx3fb_info *fbi)
{
	struct mx3fb_data *mx3fb = fbi->mx3fb;
	uint32_t reg;

	reg = FUNC0(mx3fb, SDC_COM_CONF);

	FUNC1(mx3fb, reg & ~SDC_COM_BG_EN, SDC_COM_CONF);

	return reg & SDC_COM_BG_EN;
}