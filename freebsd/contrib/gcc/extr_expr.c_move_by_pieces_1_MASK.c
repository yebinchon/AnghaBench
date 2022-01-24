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
struct move_by_pieces {unsigned int len; unsigned int offset; scalar_t__ explicit_inc_to; scalar_t__ explicit_inc_from; scalar_t__ reverse; int /*<<< orphan*/  from_addr; int /*<<< orphan*/  to_addr; scalar_t__ to; scalar_t__ from; scalar_t__ autinc_from; scalar_t__ autinc_to; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  unsigned int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int) ; 
 scalar_t__ HAVE_POST_INCREMENT ; 
 scalar_t__ HAVE_PRE_DECREMENT ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (rtx) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 rtx FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 rtx FUNC8 (rtx,...) ; 

__attribute__((used)) static void
FUNC9 (rtx (*genfun) (rtx, ...), enum machine_mode mode,
		  struct move_by_pieces *data)
{
  unsigned int size = FUNC1 (mode);
  rtx to1 = NULL_RTX, from1;

  while (data->len >= size)
    {
      if (data->reverse)
	data->offset -= size;

      if (data->to)
	{
	  if (data->autinc_to)
	    to1 = FUNC3 (data->to, mode, data->to_addr,
					     data->offset);
	  else
	    to1 = FUNC2 (data->to, mode, data->offset);
	}

      if (data->autinc_from)
	from1 = FUNC3 (data->from, mode, data->from_addr,
					   data->offset);
      else
	from1 = FUNC2 (data->from, mode, data->offset);

      if (HAVE_PRE_DECREMENT && data->explicit_inc_to < 0)
	FUNC4 (FUNC7 (data->to_addr,
				  FUNC0 (-(HOST_WIDE_INT)size)));
      if (HAVE_PRE_DECREMENT && data->explicit_inc_from < 0)
	FUNC4 (FUNC7 (data->from_addr,
				  FUNC0 (-(HOST_WIDE_INT)size)));

      if (data->to)
	FUNC4 ((*genfun) (to1, from1));
      else
	{
#ifdef PUSH_ROUNDING
	  emit_single_push_insn (mode, from1, NULL);
#else
	  FUNC6 ();
#endif
	}

      if (HAVE_POST_INCREMENT && data->explicit_inc_to > 0)
	FUNC4 (FUNC7 (data->to_addr, FUNC0 (size)));
      if (HAVE_POST_INCREMENT && data->explicit_inc_from > 0)
	FUNC4 (FUNC7 (data->from_addr, FUNC0 (size)));

      if (! data->reverse)
	data->offset += size;

      data->len -= size;
    }
}