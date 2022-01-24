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
struct cleanup {int dummy; } ;
struct callback_data {scalar_t__ load_start; scalar_t__ load_end; scalar_t__ load_offset; } ;
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int SEC_LOAD ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,char*) ; 
 struct cleanup* FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC17 (scalar_t__) ; 

__attribute__((used)) static void
FUNC18 (bfd *ibfd, asection *isec, void *args)
{
  struct callback_data *data = args;
  bfd_vma sec_start  = FUNC7 (ibfd, isec);
  bfd_size_type size = FUNC6 (ibfd, isec);
  bfd_vma sec_end    = sec_start + size;
  bfd_size_type sec_offset = 0;
  bfd_size_type sec_load_count = size;
  struct cleanup *old_chain;
  char *buf;
  int ret;

  /* Ignore non-loadable sections, eg. from elf files. */
  if (!(FUNC4 (ibfd, isec) & SEC_LOAD))
    return;

  /* Does the section overlap with the desired restore range? */
  if (sec_end <= data->load_start 
      || (data->load_end > 0 && sec_start >= data->load_end))
    {
      /* No, no useable data in this section. */
      FUNC12 ("skipping section %s...\n", 
		       FUNC5 (ibfd, isec));
      return;
    }

  /* Compare section address range with user-requested
     address range (if any).  Compute where the actual
     transfer should start and end.  */
  if (sec_start < data->load_start)
    sec_offset = data->load_start - sec_start;
  /* Size of a partial transfer: */
  sec_load_count -= sec_offset;
  if (data->load_end > 0 && sec_end > data->load_end)
    sec_load_count -= sec_end - data->load_end;

  /* Get the data.  */
  buf = FUNC17 (size);
  old_chain = FUNC10 (xfree, buf);
  if (!FUNC3 (ibfd, isec, buf, 0, size))
    FUNC9 ("Failed to read bfd file %s: '%s'.", FUNC2 (ibfd), 
	   FUNC0 (FUNC1 ()));

  FUNC12 ("Restoring section %s (0x%lx to 0x%lx)",
		   FUNC5 (ibfd, isec), 
		   (unsigned long) sec_start, 
		   (unsigned long) sec_end);

  if (data->load_offset != 0 || data->load_start != 0 || data->load_end != 0)
    FUNC12 (" into memory (0x%s to 0x%s)\n", 
		     FUNC11 ((unsigned long) sec_start 
			       + sec_offset + data->load_offset), 
		     FUNC11 ((unsigned long) sec_start + sec_offset 
		       + data->load_offset + sec_load_count));
  else
    FUNC13 ("\n");

  /* Write the data.  */
  ret = FUNC15 (sec_start + sec_offset + data->load_offset, 
			     buf + sec_offset, sec_load_count);
  if (ret != 0)
    FUNC16 ("restore: memory write failed (%s).", FUNC14 (ret));
  FUNC8 (old_chain);
  return;
}