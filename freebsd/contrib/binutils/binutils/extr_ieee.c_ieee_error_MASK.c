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
struct ieee_info {int /*<<< orphan*/  abfd; int /*<<< orphan*/  const* bytes; } ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2 (struct ieee_info *info, const bfd_byte *p, const char *s)
{
  if (p != NULL)
    FUNC1 (stderr, "%s: 0x%lx: %s (0x%x)\n", FUNC0 (info->abfd),
	     (unsigned long) (p - info->bytes), s, *p);
  else
    FUNC1 (stderr, "%s: %s\n", FUNC0 (info->abfd), s);
}