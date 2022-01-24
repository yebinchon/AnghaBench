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
typedef  int /*<<< orphan*/  word ;
struct TYPE_2__ {size_t st_size; int /*<<< orphan*/  st_mode; } ;
struct file_data {scalar_t__ desc; size_t bufsize; size_t buffered; void* buffer; TYPE_1__ stat; } ;

/* Variables and functions */
 size_t PTRDIFF_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file_data*,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (void*,size_t) ; 

__attribute__((used)) static void
FUNC4 (struct file_data *current)
{
  size_t cc;

  if (current->desc < 0)
    {
      /* The file is nonexistent.  */
      return;
    }

  if (FUNC0 (current->stat.st_mode))
    {
      /* It's a regular file; slurp in the rest all at once.  */

      /* Get the size out of the stat block.
	 Allocate just enough room for appended newline plus word sentinel,
	 plus word-alignment since we want the buffer word-aligned.  */
      size_t file_size = current->stat.st_size;
      cc = file_size + 2 * sizeof (word) - file_size % sizeof (word);
      if (file_size != current->stat.st_size || cc < file_size
	  || PTRDIFF_MAX <= cc)
	FUNC2 ();

      if (current->bufsize < cc)
	{
	  current->bufsize = cc;
	  current->buffer = FUNC3 (current->buffer, cc);
	}

      /* Try to read at least 1 more byte than the size indicates, to
	 detect whether the file is growing.  This is a nicety for
	 users who run 'diff' on files while they are changing.  */

      if (current->buffered <= file_size)
	{
	  FUNC1 (current, file_size + 1 - current->buffered);
	  if (current->buffered <= file_size)
	    return;
	}
    }

  /* It's not a regular file, or it's a growing regular file; read it,
     growing the buffer as needed.  */

  FUNC1 (current, current->bufsize - current->buffered);

  if (current->buffered)
    {
      while (current->buffered == current->bufsize)
	{
	  if (PTRDIFF_MAX / 2 - sizeof (word) < current->bufsize)
	    FUNC2 ();
	  current->bufsize *= 2;
	  current->buffer = FUNC3 (current->buffer, current->bufsize);
	  FUNC1 (current, current->bufsize - current->buffered);
	}

      /* Allocate just enough room for appended newline plus word
	 sentinel, plus word-alignment.  */
      cc = current->buffered + 2 * sizeof (word);
      current->bufsize = cc - cc % sizeof (word);
      current->buffer = FUNC3 (current->buffer, current->bufsize);
    }
}