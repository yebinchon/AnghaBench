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
struct _ovl_stream {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ovl_mgr_open ; 
 int /*<<< orphan*/  ovl_mgr_pread ; 

bfd_boolean
FUNC1 (bfd **ovl_bfd, const struct _ovl_stream *stream)
{
  *ovl_bfd = FUNC0 ("builtin ovl_mgr",
			      "elf32-spu",
			      ovl_mgr_open,
			      (void *) stream,
			      ovl_mgr_pread,
			      NULL,
			      NULL);
  return *ovl_bfd != NULL;
}