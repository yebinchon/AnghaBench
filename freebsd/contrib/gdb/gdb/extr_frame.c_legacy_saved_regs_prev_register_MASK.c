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
struct frame_info {struct frame_info* prev; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int) ; 
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 int SP_REGNUM ; 
 scalar_t__* FUNC3 (struct frame_info*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct frame_info*,int,int*,int*,scalar_t__*,int*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int lval_memory ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int) ; 
 int not_lval ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC10 (struct frame_info *next_frame,
				 void **this_prologue_cache,
				 int regnum, int *optimizedp,
				 enum lval_type *lvalp, CORE_ADDR *addrp,
				 int *realnump, void *bufferp)
{
  /* HACK: New code is passed the next frame and this cache.
     Unfortunately, old code expects this frame.  Since this is a
     backward compatibility hack, cheat by walking one level along the
     prologue chain to the frame the old code expects.

     Do not try this at home.  Professional driver, closed course.  */
  struct frame_info *frame = next_frame->prev;
  FUNC6 (frame != NULL);

  if (FUNC3 (frame) == NULL)
    {
      /* If nothing's initialized the saved regs, do it now.  */
      FUNC6 (FUNC1 ());
      FUNC0 (frame);
      FUNC6 (FUNC3 (frame) != NULL);
    }

  if (FUNC3 (frame) != NULL
      && FUNC3 (frame)[regnum] != 0)
    {
      if (regnum == SP_REGNUM)
	{
	  /* SP register treated specially.  */
	  *optimizedp = 0;
	  *lvalp = not_lval;
	  *addrp = 0;
	  *realnump = -1;
	  if (bufferp != NULL)
	    /* NOTE: cagney/2003-05-09: In-lined store_address with
               it's body - store_unsigned_integer.  */
	    FUNC9 (bufferp, FUNC2 (regnum),
				    FUNC3 (frame)[regnum]);
	}
      else
	{
	  /* Any other register is saved in memory, fetch it but cache
             a local copy of its value.  */
	  *optimizedp = 0;
	  *lvalp = lval_memory;
	  *addrp = FUNC3 (frame)[regnum];
	  *realnump = -1;
	  if (bufferp != NULL)
	    {
#if 1
	      /* Save each register value, as it is read in, in a
                 frame based cache.  */
	      void **regs = (*this_prologue_cache);
	      if (regs == NULL)
		{
		  int sizeof_cache = ((NUM_REGS + NUM_PSEUDO_REGS)
				      * sizeof (void *));
		  regs = FUNC4 (sizeof_cache);
		  (*this_prologue_cache) = regs;
		}
	      if (regs[regnum] == NULL)
		{
		  regs[regnum]
		    = FUNC4 (FUNC2 (regnum));
		  FUNC8 (FUNC3 (frame)[regnum], regs[regnum],
			       FUNC2 (regnum));
		}
	      FUNC7 (bufferp, regs[regnum], FUNC2 (regnum));
#else
	      /* Read the value in from memory.  */
	      read_memory (deprecated_get_frame_saved_regs (frame)[regnum], bufferp,
			   DEPRECATED_REGISTER_RAW_SIZE (regnum));
#endif
	    }
	}
      return;
    }

  /* No luck.  Assume this and the next frame have the same register
     value.  Pass the unwind request down the frame chain to the next
     frame.  Hopefully that frame will find the register's location.  */
  FUNC5 (next_frame, regnum, optimizedp, lvalp, addrp,
			 realnump, bufferp);
}