#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {void (* lcdc_callback ) (void*) ;int /*<<< orphan*/  tearsync_mode; void* lcdc_callback_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFBI_CONTROL ; 
 int /*<<< orphan*/  RFBI_PIXEL_CNT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 TYPE_1__ rfbi ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(int width, int height,
				void (callback)(void * data), void *data)
{
	u32 w;

	FUNC0(callback == NULL);

	FUNC3(1);
	FUNC2(width, height);

	rfbi.lcdc_callback = callback;
	rfbi.lcdc_callback_data = data;

	FUNC5(RFBI_PIXEL_CNT, width * height);

	w = FUNC4(RFBI_CONTROL);
	w |= 1;				/* enable */
	if (!rfbi.tearsync_mode)
		w |= 1 << 4;		/* internal trigger, reset by HW */
	FUNC5(RFBI_CONTROL, w);

	FUNC1(1);
}