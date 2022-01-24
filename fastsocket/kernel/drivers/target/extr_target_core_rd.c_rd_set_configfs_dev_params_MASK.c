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
typedef  int /*<<< orphan*/  substring_t ;
struct se_device {int dummy; } ;
struct rd_dev {int rd_page_count; int /*<<< orphan*/  rd_flags; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_rd_pages 128 
 int /*<<< orphan*/  RDF_HAS_PAGE_COUNT ; 
 struct rd_dev* FUNC0 (struct se_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 char* FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static ssize_t FUNC7(struct se_device *dev,
		const char *page, ssize_t count)
{
	struct rd_dev *rd_dev = FUNC0(dev);
	char *orig, *ptr, *opts;
	substring_t args[MAX_OPT_ARGS];
	int ret = 0, arg, token;

	opts = FUNC2(page, GFP_KERNEL);
	if (!opts)
		return -ENOMEM;

	orig = opts;

	while ((ptr = FUNC6(&opts, ",\n")) != NULL) {
		if (!*ptr)
			continue;

		token = FUNC4(ptr, tokens, args);
		switch (token) {
		case Opt_rd_pages:
			FUNC3(args, &arg);
			rd_dev->rd_page_count = arg;
			FUNC5("RAMDISK: Referencing Page"
				" Count: %u\n", rd_dev->rd_page_count);
			rd_dev->rd_flags |= RDF_HAS_PAGE_COUNT;
			break;
		default:
			break;
		}
	}

	FUNC1(orig);
	return (!ret) ? count : ret;
}