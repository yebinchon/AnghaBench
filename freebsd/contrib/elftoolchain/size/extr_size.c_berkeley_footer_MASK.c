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

/* Variables and functions */
 int BUF_SIZE ; 
 scalar_t__ RADIX_DECIMAL ; 
 scalar_t__ RADIX_HEX ; 
 scalar_t__ RADIX_OCTAL ; 
 scalar_t__ bss_size ; 
 int /*<<< orphan*/  bss_size_total ; 
 scalar_t__ data_size ; 
 int /*<<< orphan*/  data_size_total ; 
 scalar_t__ radix ; 
 scalar_t__ show_totals ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ text_size ; 
 int /*<<< orphan*/  text_size_total ; 
 scalar_t__ total_size ; 

__attribute__((used)) static void
FUNC4(const char *name, const char *ar_name, const char *msg)
{
	char buf[BUF_SIZE];

	total_size = text_size + data_size + bss_size;
	if (show_totals) {
		text_size_total += text_size;
		bss_size_total += bss_size;
		data_size_total += data_size;
	}

	FUNC1();
	FUNC3(text_size, radix, 0);
	FUNC3(data_size, radix, 1);
	FUNC3(bss_size, radix, 2);
	if (radix == RADIX_OCTAL)
		FUNC3(total_size, RADIX_OCTAL, 3);
	else
		FUNC3(total_size, RADIX_DECIMAL, 3);
	FUNC3(total_size, RADIX_HEX, 4);
	if (ar_name != NULL && name != NULL)
		(void) FUNC0(buf, BUF_SIZE, "%s (%s %s)", ar_name, msg,
		    name);
	else if (ar_name != NULL && name == NULL)
		(void) FUNC0(buf, BUF_SIZE, "%s (%s)", ar_name, msg);
	else
		(void) FUNC0(buf, BUF_SIZE, "%s", name);
	FUNC2(buf, 5);
}