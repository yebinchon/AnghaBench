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
union vx_codec_data {int /*<<< orphan*/  l; } ;
struct vx_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union vx_codec_data) ; 
 int /*<<< orphan*/  FUNC1 (union vx_codec_data,int) ; 
 int /*<<< orphan*/  FUNC2 (union vx_codec_data,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vx_core*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vx_core *chip, int codec, int reg, int val)
{
	union vx_codec_data data;
	/* DAC control register */
	FUNC0(data);
	FUNC1(data, reg);
	FUNC2(data, val);
	FUNC3(chip, codec, data.l);
}