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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {int intoffset; int /*<<< orphan*/  vregno; scalar_t__ named; int /*<<< orphan*/  fregno; } ;
typedef  int HOST_WIDE_INT ;
typedef  TYPE_1__ CUMULATIVE_ARGS ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
#define  DCmode 130 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int DFmode ; 
 scalar_t__ FIELD_DECL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ RECORD_TYPE ; 
#define  SCmode 129 
 int SFmode ; 
#define  TCmode 128 
 int TFmode ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int,scalar_t__,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void
FUNC15 (CUMULATIVE_ARGS *cum, tree type,
				    HOST_WIDE_INT startbitpos, rtx rvec[],
				    int *k)
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
	    && FUNC12 (FUNC9 (f), 1))
	  bitpos += FUNC13 (f);

	/* ??? FIXME: else assume zero offset.  */

	if (FUNC3 (ftype) == RECORD_TYPE)
	  FUNC15 (cum, ftype, bitpos, rvec, k);
	else if (cum->named && FUNC8 (cum, mode, ftype))
	  {
#if 0
	    switch (mode)
	      {
	      case SCmode: mode = SFmode; break;
	      case DCmode: mode = DFmode; break;
	      case TCmode: mode = TFmode; break;
	      default: break;
	      }
#endif
	    FUNC14 (cum, bitpos, rvec, k);
	    rvec[(*k)++]
	      = FUNC10 (VOIDmode,
				   FUNC11 (mode, cum->fregno++),
				   FUNC1 (bitpos / BITS_PER_UNIT));
	    if (mode == TFmode)
	      cum->fregno++;
	  }
	else if (cum->named && FUNC7 (cum, mode, ftype, 1))
	  {
	    FUNC14 (cum, bitpos, rvec, k);
	    rvec[(*k)++]
	      = FUNC10 (VOIDmode,
				   FUNC11 (mode, cum->vregno++),
				   FUNC1 (bitpos / BITS_PER_UNIT));
	  }
	else if (cum->intoffset == -1)
	  cum->intoffset = bitpos;
      }
}