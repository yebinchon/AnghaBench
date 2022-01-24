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
struct bfd_section {int dummy; } ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FOPEN_RB ; 
 int /*<<< orphan*/  TRUE ; 
 unsigned long FUNC0 (unsigned long,unsigned char*,size_t) ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 int /*<<< orphan*/  bfd_error_no_memory ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bfd_section*,char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int FUNC11 (char const*) ; 

bfd_boolean
FUNC12 (bfd *abfd,
				   struct bfd_section *sect,
				   const char *filename)
{
  bfd_size_type debuglink_size;
  unsigned long crc32;
  char * contents;
  bfd_size_type crc_offset;
  FILE * handle;
  static unsigned char buffer[8 * 1024];
  size_t count;

  if (abfd == NULL || sect == NULL || filename == NULL)
    {
      FUNC2 (bfd_error_invalid_operation);
      return FALSE;
    }

  /* Make sure that we can read the file.
     XXX - Should we attempt to locate the debug info file using the same
     algorithm as gdb ?  At the moment, since we are creating the
     .gnu_debuglink section, we insist upon the user providing us with a
     correct-for-section-creation-time path, but this need not conform to
     the gdb location algorithm.  */
  handle = FUNC9 (filename, FOPEN_RB);
  if (handle == NULL)
    {
      FUNC2 (bfd_error_system_call);
      return FALSE;
    }

  crc32 = 0;
  while ((count = FUNC6 (buffer, 1, sizeof buffer, handle)) > 0)
    crc32 = FUNC0 (crc32, buffer, count);
  FUNC5 (handle);

  /* Strip off any path components in filename,
     now that we no longer need them.  */
  filename = FUNC8 (filename);

  debuglink_size = FUNC11 (filename) + 1;
  debuglink_size += 3;
  debuglink_size &= ~3;
  debuglink_size += 4;

  contents = FUNC4 (debuglink_size);
  if (contents == NULL)
    {
      /* XXX Should we delete the section from the bfd ?  */
      FUNC2 (bfd_error_no_memory);
      return FALSE;
    }

  FUNC10 (contents, filename);
  crc_offset = debuglink_size - 4;

  FUNC1 (abfd, crc32, contents + crc_offset);

  if (! FUNC3 (abfd, sect, contents, 0, debuglink_size))
    {
      /* XXX Should we delete the section from the bfd ?  */
      FUNC7 (contents);
      return FALSE;
    }

  return TRUE;
}