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
struct fb_cmap {int len; scalar_t__ start; int /*<<< orphan*/ * transp; void* blue; void* green; void* red; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fb_cmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_cmap*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 

int FUNC4(struct fb_cmap *cmap, int len, int transp)
{
    int size = len*sizeof(u16);

    if (cmap->len != len) {
	FUNC1(cmap);
	if (!len)
	    return 0;
	if (!(cmap->red = FUNC3(size, GFP_ATOMIC)))
	    goto fail;
	if (!(cmap->green = FUNC3(size, GFP_ATOMIC)))
	    goto fail;
	if (!(cmap->blue = FUNC3(size, GFP_ATOMIC)))
	    goto fail;
	if (transp) {
	    if (!(cmap->transp = FUNC3(size, GFP_ATOMIC)))
		goto fail;
	} else
	    cmap->transp = NULL;
    }
    cmap->start = 0;
    cmap->len = len;
    FUNC0(FUNC2(len), cmap);
    return 0;

fail:
    FUNC1(cmap);
    return -ENOMEM;
}