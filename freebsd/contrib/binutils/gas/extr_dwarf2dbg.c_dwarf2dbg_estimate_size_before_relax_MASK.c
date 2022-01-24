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
struct TYPE_3__ {int fr_subtype; int /*<<< orphan*/  fr_offset; int /*<<< orphan*/  fr_symbol; } ;
typedef  TYPE_1__ fragS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2 (fragS *frag)
{
  offsetT addr_delta;
  int size;

  addr_delta = FUNC0 (frag->fr_symbol);
  size = FUNC1 (frag->fr_offset, addr_delta);

  frag->fr_subtype = size;

  return size;
}