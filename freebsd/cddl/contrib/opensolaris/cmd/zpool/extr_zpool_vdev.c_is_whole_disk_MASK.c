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
struct dk_gpt {int dummy; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BACKUP_SLICE ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EFI_NUMPAR ; 
 int MAXPATHLEN ; 
 int O_NDELAY ; 
 int O_RDWR ; 
 char* ZFS_RDISK_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct dk_gpt**) ; 
 int /*<<< orphan*/  FUNC2 (struct dk_gpt*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char const*,char) ; 

__attribute__((used)) static boolean_t
FUNC8(const char *arg)
{
#ifdef illumos
	struct dk_gpt *label;
	int	fd;
	char	path[MAXPATHLEN];

	(void) snprintf(path, sizeof (path), "%s%s%s",
	    ZFS_RDISK_ROOT, strrchr(arg, '/'), BACKUP_SLICE);
	if ((fd = open(path, O_RDWR | O_NDELAY)) < 0)
		return (B_FALSE);
	if (efi_alloc_and_init(fd, EFI_NUMPAR, &label) != 0) {
		(void) close(fd);
		return (B_FALSE);
	}
	efi_free(label);
	(void) close(fd);
	return (B_TRUE);
#else
	int fd;

	fd = FUNC4(arg, 0);
	if (fd >= 0) {
		FUNC3(fd);
		return (B_TRUE);
	}
	return (B_FALSE);
#endif
}