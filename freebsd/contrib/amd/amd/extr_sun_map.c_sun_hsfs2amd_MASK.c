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
struct sun_entry {TYPE_1__* location_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_DEV_KW ; 
 int /*<<< orphan*/  AMD_TYPE_CDFS_KW ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC1(char *dest,
	     size_t destlen,
	     const char *key,
	     const struct sun_entry *s_entry)
{
  /* set fstype CDFS */
  FUNC0(dest, AMD_TYPE_CDFS_KW, destlen);
  /* set the cdrom device */
  FUNC0(dest, AMD_DEV_KW, destlen);
  /* XXX: For now just assume that there is only one device. */
  FUNC0(dest, s_entry->location_list->path, destlen);
}