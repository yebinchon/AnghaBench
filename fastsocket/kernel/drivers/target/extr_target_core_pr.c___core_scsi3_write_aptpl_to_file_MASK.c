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
typedef  int u32 ;
struct t10_wwn {unsigned char* unit_serial; } ;
struct se_device {struct t10_wwn t10_wwn; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int EMSGSIZE ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int FUNC1 (struct file*) ; 
 struct file* FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int FUNC4 (struct file*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,unsigned char*) ; 
 int FUNC9 (unsigned char*) ; 

__attribute__((used)) static int FUNC10(
	struct se_device *dev,
	unsigned char *buf,
	u32 pr_aptpl_buf_len)
{
	struct t10_wwn *wwn = &dev->t10_wwn;
	struct file *file;
	int flags = O_RDWR | O_CREAT | O_TRUNC;
	char path[512];
	int ret;

	FUNC5(path, 0, 512);

	if (FUNC9(&wwn->unit_serial[0]) >= 512) {
		FUNC7("WWN value for struct se_device does not fit"
			" into path buffer\n");
		return -EMSGSIZE;
	}

	FUNC8(path, 512, "/var/target/pr/aptpl_%s", &wwn->unit_serial[0]);
	file = FUNC2(path, flags, 0600);
	if (FUNC0(file)) {
		FUNC7("filp_open(%s) for APTPL metadata"
			" failed\n", path);
		return FUNC1(file);
	}

	if (!pr_aptpl_buf_len)
		pr_aptpl_buf_len = (FUNC9(&buf[0]) + 1); /* Add extra for NULL */

	ret = FUNC4(file, buf, pr_aptpl_buf_len, 0);

	if (ret < 0)
		FUNC6("Error writing APTPL metadata file: %s\n", path);
	FUNC3(file);

	return ret ? -EIO : 0;
}