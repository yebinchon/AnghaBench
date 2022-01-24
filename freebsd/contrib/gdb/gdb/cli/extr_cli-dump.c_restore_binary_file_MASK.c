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
struct callback_data {long load_start; long load_end; scalar_t__ load_offset; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_RB ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ) ; 
 long FUNC2 (char*,int,long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (long) ; 
 long FUNC9 (scalar_t__,char*,long) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC11 (long) ; 

__attribute__((used)) static void
FUNC12 (char *filename, struct callback_data *data)
{
  FILE *file = FUNC1 (filename, FOPEN_RB);
  int status;
  char *buf;
  long len;

  /* Get the file size for reading.  */
  if (FUNC3 (file, 0, SEEK_END) == 0)
    len = FUNC4 (file);
  else
    FUNC6 (filename);

  if (len <= data->load_start)
    FUNC0 ("Start address is greater than length of binary file %s.", 
	   filename);

  /* Chop off "len" if it exceeds the requested load_end addr. */
  if (data->load_end != 0 && data->load_end < len)
    len = data->load_end;
  /* Chop off "len" if the requested load_start addr skips some bytes. */
  if (data->load_start > 0)
    len -= data->load_start;

  FUNC7 
    ("Restoring binary file %s into memory (0x%lx to 0x%lx)\n", 
     filename, 
     (unsigned long) data->load_start + data->load_offset, 
     (unsigned long) data->load_start + data->load_offset + len);

  /* Now set the file pos to the requested load start pos.  */
  if (FUNC3 (file, data->load_start, SEEK_SET) != 0)
    FUNC6 (filename);

  /* Now allocate a buffer and read the file contents.  */
  buf = FUNC11 (len);
  FUNC5 (xfree, buf);
  if (FUNC2 (buf, 1, len, file) != len)
    FUNC6 (filename);

  /* Now write the buffer into target memory. */
  len = FUNC9 (data->load_start + data->load_offset, buf, len);
  if (len != 0)
    FUNC10 ("restore: memory write failed (%s).", FUNC8 (len));
  return;
}