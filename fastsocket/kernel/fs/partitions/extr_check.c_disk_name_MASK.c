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
struct gendisk {char* disk_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDEVNAME_SIZE ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC2 (char*) ; 

char *FUNC3(struct gendisk *hd, int partno, char *buf)
{
	if (!partno)
		FUNC1(buf, BDEVNAME_SIZE, "%s", hd->disk_name);
	else if (FUNC0(hd->disk_name[FUNC2(hd->disk_name)-1]))
		FUNC1(buf, BDEVNAME_SIZE, "%sp%d", hd->disk_name, partno);
	else
		FUNC1(buf, BDEVNAME_SIZE, "%s%d", hd->disk_name, partno);

	return buf;
}