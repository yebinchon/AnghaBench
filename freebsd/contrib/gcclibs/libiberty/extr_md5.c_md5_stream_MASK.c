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
struct md5_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BLOCKSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct md5_ctx*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct md5_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct md5_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,struct md5_ctx*) ; 

int
FUNC6 (FILE *stream, void *resblock)
{
  /* Important: BLOCKSIZE must be a multiple of 64.  */
#define BLOCKSIZE 4096
  struct md5_ctx ctx;
  char buffer[BLOCKSIZE + 72];
  size_t sum;

  /* Initialize the computation context.  */
  FUNC3 (&ctx);

  /* Iterate over full file contents.  */
  while (1)
    {
      /* We read the file in blocks of BLOCKSIZE bytes.  One call of the
	 computation function processes the whole buffer so that with the
	 next round of the loop another block can be read.  */
      size_t n;
      sum = 0;

      /* Read block.  Take care for partial reads.  */
      do
	{
	  n = FUNC1 (buffer + sum, 1, BLOCKSIZE - sum, stream);

	  sum += n;
	}
      while (sum < BLOCKSIZE && n != 0);
      if (n == 0 && FUNC0 (stream))
        return 1;

      /* If end of file is reached, end the loop.  */
      if (n == 0)
	break;

      /* Process buffer with BLOCKSIZE bytes.  Note that
			BLOCKSIZE % 64 == 0
       */
      FUNC4 (buffer, BLOCKSIZE, &ctx);
    }

  /* Add the last bytes if necessary.  */
  if (sum > 0)
    FUNC5 (buffer, sum, &ctx);

  /* Construct result in desired memory.  */
  FUNC2 (&ctx, resblock);
  return 0;
}