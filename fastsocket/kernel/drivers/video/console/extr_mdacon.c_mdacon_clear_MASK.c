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
typedef  int /*<<< orphan*/  u16 ;
struct vc_data {int /*<<< orphan*/  vc_video_erase_char; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int mda_num_columns ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct vc_data *c, int y, int x, 
			  int height, int width)
{
	u16 *dest = FUNC0(x, y);
	u16 eattr = FUNC1(c->vc_video_erase_char);

	if (width <= 0 || height <= 0)
		return;

	if (x==0 && width==mda_num_columns) {
		FUNC2(dest, eattr, height*width*2);
	} else {
		for (; height > 0; height--, dest+=mda_num_columns)
			FUNC2(dest, eattr, width*2);
	}
}