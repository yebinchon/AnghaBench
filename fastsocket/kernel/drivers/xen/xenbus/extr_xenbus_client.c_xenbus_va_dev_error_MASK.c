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
typedef  int /*<<< orphan*/  va_list ;
struct xenbus_device {int /*<<< orphan*/  nodename; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PRINTF_BUFFER_SIZE ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,...) ; 
 char* FUNC2 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*,unsigned int,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,char*,char*) ; 

__attribute__((used)) static void FUNC8(struct xenbus_device *dev, int err,
				const char *fmt, va_list ap)
{
	int ret;
	unsigned int len;
	char *printf_buffer = NULL;
	char *path_buffer = NULL;

#define PRINTF_BUFFER_SIZE 4096
	printf_buffer = FUNC4(PRINTF_BUFFER_SIZE, GFP_KERNEL);
	if (printf_buffer == NULL)
		goto fail;

	len = FUNC5(printf_buffer, "%i ", -err);
	ret = FUNC6(printf_buffer+len, PRINTF_BUFFER_SIZE-len, fmt, ap);

	FUNC0(len + ret > PRINTF_BUFFER_SIZE-1);

	FUNC1(&dev->dev, "%s\n", printf_buffer);

	path_buffer = FUNC2(dev);

	if (path_buffer == NULL) {
		FUNC1(&dev->dev, "failed to write error node for %s (%s)\n",
		       dev->nodename, printf_buffer);
		goto fail;
	}

	if (FUNC7(XBT_NIL, path_buffer, "error", printf_buffer) != 0) {
		FUNC1(&dev->dev, "failed to write error node for %s (%s)\n",
		       dev->nodename, printf_buffer);
		goto fail;
	}

fail:
	FUNC3(printf_buffer);
	FUNC3(path_buffer);
}