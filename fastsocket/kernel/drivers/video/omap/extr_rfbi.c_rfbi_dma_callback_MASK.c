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
struct TYPE_2__ {int /*<<< orphan*/  lcdc_callback_data; int /*<<< orphan*/  (* lcdc_callback ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ rfbi ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *data)
{
	FUNC0();
	rfbi.lcdc_callback(rfbi.lcdc_callback_data);
}