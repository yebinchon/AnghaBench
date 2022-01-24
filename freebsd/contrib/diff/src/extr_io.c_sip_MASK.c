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
typedef  int /*<<< orphan*/  word ;
struct file_data {scalar_t__ desc; int bufsize; int eof; scalar_t__ buffered; void* buffer; int /*<<< orphan*/  name; int /*<<< orphan*/  stat; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 scalar_t__ PTRDIFF_MAX ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,scalar_t__) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct file_data*,int) ; 
 int FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,int) ; 
 void* FUNC7 (int) ; 

__attribute__((used)) static bool
FUNC8 (struct file_data *current, bool skip_test)
{
  /* If we have a nonexistent file at this stage, treat it as empty.  */
  if (current->desc < 0)
    {
      /* Leave room for a sentinel.  */
      current->bufsize = sizeof (word);
      current->buffer = FUNC7 (current->bufsize);
    }
  else
    {
      current->bufsize = FUNC2 (sizeof (word),
				     FUNC0 (current->stat),
				     PTRDIFF_MAX - 2 * sizeof (word));
      current->buffer = FUNC7 (current->bufsize);

      if (! skip_test)
	{
	  /* Check first part of file to see if it's a binary file.  */

	  bool was_binary = FUNC6 (current->desc, true);
	  off_t buffered;
	  FUNC3 (current, current->bufsize);
	  buffered = current->buffered;

	  if (! was_binary)
	    {
	      /* Revert to text mode and seek back to the beginning to
		 reread the file.  Use relative seek, since file
		 descriptors like stdin might not start at offset
		 zero.  */

	      if (FUNC4 (current->desc, - buffered, SEEK_CUR) == -1)
		FUNC5 (current->name);
	      FUNC6 (current->desc, false);
	      current->buffered = 0;
	      current->eof = false;
	    }

	  return FUNC1 (current->buffer, buffered);
	}
    }

  current->buffered = 0;
  current->eof = false;
  return false;
}