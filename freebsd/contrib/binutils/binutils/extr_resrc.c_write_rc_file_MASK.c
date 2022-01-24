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
typedef  scalar_t__ rc_uint_type ;
typedef  int /*<<< orphan*/  rc_res_id ;
typedef  int /*<<< orphan*/  rc_res_directory ;
typedef  scalar_t__ bfd_signed_vma ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_WT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__*,int) ; 

void
FUNC5 (const char *filename, const rc_res_directory *resources)
{
  FILE *e;
  rc_uint_type language;

  if (filename == NULL)
    e = stdout;
  else
    {
      e = FUNC2 (filename, FOPEN_WT);
      if (e == NULL)
	FUNC1 (FUNC0("can't open `%s' for output: %s"), filename, FUNC3 (errno));
    }

  language = (rc_uint_type) ((bfd_signed_vma) -1);
  FUNC4 (e, resources, (const rc_res_id *) NULL,
		      (const rc_res_id *) NULL, &language, 1);
}