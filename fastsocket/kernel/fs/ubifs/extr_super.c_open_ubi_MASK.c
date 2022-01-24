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
struct ubi_volume_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct ubi_volume_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const) ; 
 int FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 
 struct ubi_volume_desc* FUNC3 (int,int,int) ; 
 struct ubi_volume_desc* FUNC4 (int,char const*,int) ; 

__attribute__((used)) static struct ubi_volume_desc *FUNC5(const char *name, int mode)
{
	int dev, vol;
	char *endptr;

	if (name[0] != 'u' || name[1] != 'b' || name[2] != 'i')
		return FUNC0(-EINVAL);

	/* ubi:NAME method */
	if ((name[3] == ':' || name[3] == '!') && name[4] != '\0')
		return FUNC4(0, name + 4, mode);

	if (!FUNC1(name[3]))
		return FUNC0(-EINVAL);

	dev = FUNC2(name + 3, &endptr, 0);

	/* ubiY method */
	if (*endptr == '\0')
		return FUNC3(0, dev, mode);

	/* ubiX_Y method */
	if (*endptr == '_' && FUNC1(endptr[1])) {
		vol = FUNC2(endptr + 1, &endptr, 0);
		if (*endptr != '\0')
			return FUNC0(-EINVAL);
		return FUNC3(dev, vol, mode);
	}

	/* ubiX:NAME method */
	if ((*endptr == ':' || *endptr == '!') && endptr[1] != '\0')
		return FUNC4(dev, ++endptr, mode);

	return FUNC0(-EINVAL);
}