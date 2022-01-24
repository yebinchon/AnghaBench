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
struct mdp_rect {int /*<<< orphan*/  w; int /*<<< orphan*/  h; } ;
struct mdp_img {int /*<<< orphan*/  format; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mdp_img *img, struct mdp_rect *rect, uint32_t bpp,
		    uint32_t *len0, uint32_t *len1)
{
	*len0 = FUNC0(rect->h, img->width, rect->w, bpp);
	if (FUNC1(img->format))
		*len1 = *len0/FUNC2(img->format);
	else
		*len1 = 0;
}