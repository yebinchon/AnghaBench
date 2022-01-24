#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  offsetT ;
struct TYPE_3__ {int fr_var; scalar_t__ fr_offset; int /*<<< orphan*/  fr_type; scalar_t__ fr_subtype; scalar_t__ fr_fix; scalar_t__ fr_literal; int /*<<< orphan*/  fr_symbol; } ;
typedef  TYPE_1__ fragS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs_fill ; 

void
FUNC3 (fragS *frag)
{
  offsetT addr_diff;

  addr_diff = FUNC2 (frag->fr_symbol);

  /* fr_var carries the max_chars that we created the fragment with.
     fr_subtype carries the current expected length.  We must, of
     course, have allocated enough memory earlier.  */
  FUNC0 (frag->fr_var >= (int) frag->fr_subtype);

  FUNC1 (frag->fr_offset, addr_diff,
		      frag->fr_literal + frag->fr_fix, frag->fr_subtype);

  frag->fr_fix += frag->fr_subtype;
  frag->fr_type = rs_fill;
  frag->fr_var = 0;
  frag->fr_offset = 0;
}