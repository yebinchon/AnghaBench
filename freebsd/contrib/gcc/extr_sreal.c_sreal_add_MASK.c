#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uhwi ;
struct TYPE_12__ {int exp; int sig_lo; scalar_t__ sig; scalar_t__ sig_hi; } ;
typedef  TYPE_1__ sreal ;

/* Variables and functions */
 int SREAL_BITS ; 
 int SREAL_PART_BITS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*) ; 

sreal *
FUNC4 (sreal *r, sreal *a, sreal *b)
{
  int dexp;
  sreal tmp;
  sreal *bb;

  if (FUNC3 (a, b) < 0)
    {
      sreal *swap;
      swap = a;
      a = b;
      b = swap;
    }

  dexp = a->exp - b->exp;
  r->exp = a->exp;
  if (dexp > SREAL_BITS)
    {
#if SREAL_PART_BITS < 32
      r->sig_hi = a->sig_hi;
      r->sig_lo = a->sig_lo;
#else
      r->sig = a->sig;
#endif
      return r;
    }

  if (dexp == 0)
    bb = b;
  else
    {
      FUNC0 (&tmp, b);
      FUNC2 (&tmp, dexp);
      bb = &tmp;
    }

#if SREAL_PART_BITS < 32
  r->sig_hi = a->sig_hi + bb->sig_hi;
  r->sig_lo = a->sig_lo + bb->sig_lo;
  if (r->sig_lo & ((uhwi) 1 << SREAL_PART_BITS))
    {
      r->sig_hi++;
      r->sig_lo -= (uhwi) 1 << SREAL_PART_BITS;
    }
#else
  r->sig = a->sig + bb->sig;
#endif
  FUNC1 (r);
  return r;
}