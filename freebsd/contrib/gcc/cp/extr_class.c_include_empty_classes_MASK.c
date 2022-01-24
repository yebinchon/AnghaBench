#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* record_layout_info ;
struct TYPE_5__ {int /*<<< orphan*/  bitpos; int /*<<< orphan*/  t; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_UNIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bitsizetype ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (record_layout_info rli)
{
  tree eoc;
  tree rli_size;

  /* It might be the case that we grew the class to allocate a
     zero-sized base class.  That won't be reflected in RLI, yet,
     because we are willing to overlay multiple bases at the same
     offset.  However, now we need to make sure that RLI is big enough
     to reflect the entire class.  */
  eoc = FUNC6 (rli->t,
		      FUNC0 (rli->t) != NULL_TREE);
  rli_size = FUNC9 (rli);
  if (FUNC2 (rli_size) == INTEGER_CST
      && FUNC1 (rli_size, eoc))
    {
      if (!FUNC3 (2))
	/* In version 1 of the ABI, the size of a class that ends with
	   a bitfield was not rounded up to a whole multiple of a
	   byte.  Because rli_size_unit_so_far returns only the number
	   of fully allocated bytes, any extra bits were not included
	   in the size.  */
	rli->bitpos = FUNC10 (rli->bitpos, BITS_PER_UNIT);
      else
	/* The size should have been rounded to a whole byte.  */
	FUNC7 (FUNC12
		    (rli->bitpos, FUNC10 (rli->bitpos, BITS_PER_UNIT)));
      rli->bitpos
	= FUNC11 (PLUS_EXPR,
		      rli->bitpos,
		      FUNC11 (MULT_EXPR,
				  FUNC5 (bitsizetype,
					   FUNC11 (MINUS_EXPR,
						       eoc, rli_size)),
				  FUNC4 (BITS_PER_UNIT)));
      FUNC8 (rli);
    }
}