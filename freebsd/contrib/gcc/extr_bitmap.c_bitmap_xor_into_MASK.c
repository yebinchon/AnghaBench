#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ indx; int* bits; struct TYPE_13__* next; } ;
typedef  TYPE_2__ bitmap_element ;
typedef  TYPE_3__* bitmap ;
struct TYPE_14__ {TYPE_1__* current; int /*<<< orphan*/  indx; TYPE_2__* first; } ;
struct TYPE_12__ {int /*<<< orphan*/  indx; } ;
typedef  int BITMAP_WORD ;

/* Variables and functions */
 unsigned int BITMAP_ELEMENT_WORDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 

void
FUNC5 (bitmap a, bitmap b)
{
  bitmap_element *a_elt = a->first;
  bitmap_element *b_elt = b->first;
  bitmap_element *a_prev = NULL;

  if (a == b)
    {
      FUNC0 (a);
      return;
    }

  while (b_elt)
    {
      if (!a_elt || b_elt->indx < a_elt->indx)
	{
	  /* Copy b_elt.  */
	  bitmap_element *dst = FUNC2 (a, a_prev, b_elt->indx);
	  FUNC4 (dst->bits, b_elt->bits, sizeof (dst->bits));
	  a_prev = dst;
	  b_elt = b_elt->next;
	}
      else if (a_elt->indx < b_elt->indx)
	{
	  a_prev = a_elt;
	  a_elt = a_elt->next;
	}
      else
	{
	  /* Matching elts, generate A ^= B.  */
	  unsigned ix;
	  BITMAP_WORD ior = 0;
	  bitmap_element *next = a_elt->next;

	  for (ix = BITMAP_ELEMENT_WORDS; ix--;)
	    {
	      BITMAP_WORD r = a_elt->bits[ix] ^ b_elt->bits[ix];

	      ior |= r;
	      a_elt->bits[ix] = r;
	    }
	  b_elt = b_elt->next;
	  if (ior)
	    a_prev = a_elt;
	  else
	    FUNC1 (a, a_elt);
	  a_elt = next;
	}
    }
  FUNC3 (!a->current == !a->first);
  if (a->current)
    a->indx = a->current->indx;
}