#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {int fregno; int words; int intoffset; int /*<<< orphan*/  vregno; } ;
typedef  int HOST_WIDE_INT ;
typedef  TYPE_1__ CUMULATIVE_ARGS ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FIELD_DECL ; 
 int FUNC1 (int) ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int,scalar_t__,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC13 (CUMULATIVE_ARGS *cum,
					    tree type,
					    HOST_WIDE_INT startbitpos)
{
  tree f;

  for (f = FUNC5 (type); f ; f = FUNC2 (f))
    if (FUNC3 (f) == FIELD_DECL)
      {
	HOST_WIDE_INT bitpos = startbitpos;
	tree ftype = FUNC4 (f);
	enum machine_mode mode;
	if (ftype == error_mark_node)
	  continue;
	mode = FUNC6 (ftype);

	if (FUNC0 (f) != 0
	    && FUNC10 (FUNC9 (f), 1))
	  bitpos += FUNC11 (f);

	/* ??? FIXME: else assume zero offset.  */

	if (FUNC3 (ftype) == RECORD_TYPE)
	  FUNC13 (cum, ftype, bitpos);
	else if (FUNC8 (cum, mode, ftype))
	  {
	    FUNC12 (cum, bitpos);
	    cum->fregno += (FUNC1 (mode) + 7) >> 3;
	    cum->words += (FUNC1 (mode) + 7) >> 3;
	  }
	else if (FUNC7 (cum, mode, type, 1))
	  {
	    FUNC12 (cum, bitpos);
	    cum->vregno++;
	    cum->words += 2;
	  }
	else if (cum->intoffset == -1)
	  cum->intoffset = bitpos;
      }
}