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
struct frame_info {int dummy; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct frame_info*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ DUMMY_FRAME ; 
 int SP_REGNUM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC4 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct frame_info*) ; 
 scalar_t__ FUNC10 (struct frame_info*) ; 
 struct frame_info* FUNC11 (struct frame_info*) ; 
 int lval_memory ; 
 int lval_register ; 
 int not_lval ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  target_has_registers ; 

void
FUNC15 (char *raw_buffer, int *optimized,
				       CORE_ADDR *addrp,
				       struct frame_info *frame, int regnum,
				       enum lval_type *lval)
{
  if (!target_has_registers)
    FUNC6 ("No registers.");

  /* Normal systems don't optimize out things with register numbers.  */
  if (optimized != NULL)
    *optimized = 0;

  if (addrp)			/* default assumption: not found in memory */
    *addrp = 0;

  /* Note: since the current frame's registers could only have been
     saved by frames INTERIOR TO the current frame, we skip examining
     the current frame itself: otherwise, we would be getting the
     previous frame's registers which were saved by the current frame.  */

  if (frame != NULL)
    {
      for (frame = FUNC11 (frame);
	   FUNC7 (frame) >= 0;
	   frame = FUNC11 (frame))
	{
	  if (FUNC10 (frame) == DUMMY_FRAME)
	    {
	      if (lval)		/* found it in a CALL_DUMMY frame */
		*lval = not_lval;
	      if (raw_buffer)
		/* FIXME: cagney/2002-06-26: This should be via the
		   gdbarch_register_read() method so that it, on the
		   fly, constructs either a raw or pseudo register
		   from the raw register cache.  */
		FUNC13
		  (FUNC3 (FUNC9 (frame),
							 FUNC8 (frame)),
		   regnum, raw_buffer);
	      return;
	    }

	  FUNC0 (frame);
	  if (FUNC4 (frame) != NULL
	      && FUNC4 (frame)[regnum] != 0)
	    {
	      if (lval)		/* found it saved on the stack */
		*lval = lval_memory;
	      if (regnum == SP_REGNUM)
		{
		  if (raw_buffer)	/* SP register treated specially */
		    /* NOTE: cagney/2003-05-09: In-line store_address
                       with it's body - store_unsigned_integer.  */
		    FUNC14 (raw_buffer,
					    FUNC2 (regnum),
					    FUNC4 (frame)[regnum]);
		}
	      else
		{
		  if (addrp)	/* any other register */
		    *addrp = FUNC4 (frame)[regnum];
		  if (raw_buffer)
		    FUNC12 (FUNC4 (frame)[regnum], raw_buffer,
				 FUNC2 (regnum));
		}
	      return;
	    }
	}
    }

  /* If we get thru the loop to this point, it means the register was
     not saved in any frame.  Return the actual live-register value.  */

  if (lval)			/* found it in a live register */
    *lval = lval_register;
  if (addrp)
    *addrp = FUNC1 (regnum);
  if (raw_buffer)
    FUNC5 (regnum, raw_buffer);
}