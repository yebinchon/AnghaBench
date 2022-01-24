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
struct dlfb_data {int base16; int base16d; char* buf; int /*<<< orphan*/  bulk_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlfb_data*,int) ; 
 char* FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dlfb_data *dev_info)
{

	int tmpbase;
	char *bufptr;

	FUNC2(&dev_info->bulk_mutex);

	tmpbase = dev_info->base16;

	dev_info->base16 = dev_info->base16d;
	dev_info->base16d = tmpbase;

	bufptr = dev_info->buf;

	bufptr = FUNC1(bufptr, 0xFF, 0x00);

	// set addresses
	bufptr =
	    FUNC1(bufptr, 0x20, (char)(dev_info->base16 >> 16));
	bufptr = FUNC1(bufptr, 0x21, (char)(dev_info->base16 >> 8));
	bufptr = FUNC1(bufptr, 0x22, (char)(dev_info->base16));

	bufptr = FUNC1(bufptr, 0xFF, 0x00);

	FUNC0(dev_info, bufptr - dev_info->buf);

	FUNC3(&dev_info->bulk_mutex);
}