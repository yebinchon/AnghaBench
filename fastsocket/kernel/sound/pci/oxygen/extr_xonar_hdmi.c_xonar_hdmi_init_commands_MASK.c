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
struct xonar_hdmi {int* params; } ;
struct oxygen {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*) ; 

__attribute__((used)) static void FUNC2(struct oxygen *chip,
				     struct xonar_hdmi *hdmi)
{
	u8 param;

	FUNC1(chip);
	param = 0;
	FUNC0(chip, 0x61, 1, &param);
	param = 1;
	FUNC0(chip, 0x74, 1, &param);
	FUNC0(chip, 0x54, 5, hdmi->params);
}