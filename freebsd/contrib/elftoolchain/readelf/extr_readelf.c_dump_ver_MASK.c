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
struct readelf {scalar_t__ vn_s; scalar_t__ vd_s; scalar_t__ vs; scalar_t__ ver; scalar_t__ vs_s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct readelf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct readelf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct readelf*) ; 

__attribute__((used)) static void
FUNC3(struct readelf *re)
{

	if (re->vs_s && re->ver && re->vs)
		FUNC2(re);
	if (re->vd_s)
		FUNC0(re, 1);
	if (re->vn_s)
		FUNC1(re, 1);
}