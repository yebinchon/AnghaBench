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
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*,char*,int,int,int,int,char**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char const* install_partition ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*,char const*,...) ; 
 int /*<<< orphan*/  null ; 
 scalar_t__ num_linux ; 
 TYPE_1__* partitions ; 
 int FUNC6 () ; 

__attribute__((used)) static void
FUNC7(void)
{
    int part, ret;
    const char *name;
    char *items1[] =
    {
	"1", "Harddisk Install",
	"2", "Network Install(NFS)",
	"3", "Premounted on /source"
    };

    if (num_linux == 0) {
	/* XXX */
	return;
    }
    if ((part = FUNC6()) <= -1)
	return;
    install_partition = name = partitions[part].name;
    if (FUNC5("mke2fs %s %s", name, null))
	return;
    if (FUNC5("mount -t ext2 %s /install %s", name, null))
	return;
    ret = FUNC1("Choose install medium",
		      "\\nPlease say from where you want to install.\\n",
		      12, 62, 3, 3, items1);
    FUNC0();
    switch (ret) {
    case 0:
	FUNC2();
	break;
    case 1:
	FUNC3();
	break;
    case 2:
	FUNC4();
	break;
    case -2:			/* cancel */
    case -1:
	break;			/* esc */
    }
    if (FUNC5("umount /install %s", null))
	return;
}