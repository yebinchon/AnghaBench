#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int at_end; int /*<<< orphan*/  linenum; scalar_t__ pos; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ file_info_type ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FOPEN_RT ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * last_open_file ; 
 TYPE_1__* last_open_file_info ; 

__attribute__((used)) static char *
FUNC5 (file_info_type *file, char *line, unsigned int size)
{
  unsigned int count = 0;
  int c;

  char *p = line;

  /* If we couldn't open the file, return an empty line.  */
  if (file->at_end)
    return "";

  /* Check the cache and see if we last used this file.  */
  if (!last_open_file_info || file != last_open_file_info)
    {
      if (last_open_file)
	{
	  last_open_file_info->pos = FUNC4 (last_open_file);
	  FUNC0 (last_open_file);
	}

      last_open_file_info = file;
      last_open_file = FUNC2 (file->filename, FOPEN_RT);
      if (last_open_file == NULL)
	{
	  file->at_end = 1;
	  return "";
	}

      /* Seek to where we were last time this file was open.  */
      if (file->pos)
	FUNC3 (last_open_file, file->pos, SEEK_SET);
    }

  c = FUNC1 (last_open_file);

  /* Leave room for null.  */
  size -= 1;

  while (c != EOF && c != '\n')
    {
      if (count < size)
	*p++ = c;
      count++;

      c = FUNC1 (last_open_file);

    }
  if (c == EOF)
    {
      file->at_end = 1;
      if (count + 2 < size)
	{
	  *p++ = '.';
	  *p++ = '.';
	  *p++ = '.';
	}
    }
  file->linenum++;
  *p++ = 0;
  return line;
}