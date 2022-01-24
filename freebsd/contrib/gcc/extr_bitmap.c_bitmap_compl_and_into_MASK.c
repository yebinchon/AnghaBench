#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ indx; int* bits; struct TYPE_16__* next; struct TYPE_16__* prev; } ;
typedef  TYPE_2__ bitmap_element ;
typedef  TYPE_3__* bitmap ;
struct TYPE_17__ {scalar_t__ indx; TYPE_1__* current; TYPE_2__* first; } ;
struct TYPE_15__ {scalar_t__ indx; } ;
typedef  int BITMAP_WORD ;

/* Variables and functions */
 unsigned int BITMAP_ELEMENT_WORDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 

void
FUNC7 (bitmap a, bitmap b)
{
  bitmap_element *a_elt = a->first;
  bitmap_element *b_elt = b->first;
  bitmap_element *a_prev = NULL;
  bitmap_element *next;

  FUNC5 (a != b);

  if (FUNC4 (a))
    {
      FUNC1 (a, b);
      return;
    }
  if (FUNC4 (b))
    {
      FUNC0 (a);
      return;
    }

  while (a_elt || b_elt)
    {
      if (!b_elt || (a_elt && a_elt->indx < b_elt->indx))
	{
	  /* A is before B.  Remove A */
	  next = a_elt->next;
	  a_prev = a_elt->prev;
	  FUNC2 (a, a_elt);
	  a_elt = next;
	}
      else if (!a_elt || b_elt->indx < a_elt->indx)
	{
	  /* B is before A.  Copy B. */
	  next = FUNC3 (a, a_prev, b_elt->indx);
	  FUNC6 (next->bits, b_elt->bits, sizeof (next->bits));
	  a_prev = next;
	  b_elt = b_elt->next;
	}
      else
	{
	  /* Matching elts, generate A = ~A & B.  */
	  unsigned ix;
	  BITMAP_WORD ior = 0;

	  for (ix = BITMAP_ELEMENT_WORDS; ix--;)
	    {
	      BITMAP_WORD cleared = a_elt->bits[ix] & b_elt->bits[ix];
	      BITMAP_WORD r = b_elt->bits[ix] ^ cleared;

	      a_elt->bits[ix] = r;
	      ior |= r;
	    }
	  next = a_elt->next;
	  if (!ior)
	    FUNC2 (a, a_elt);
	  else
	    a_prev = a_elt;
	  a_elt = next;
	  b_elt = b_elt->next;
	}
    }
  FUNC5 (!a->current == !a->first);
  FUNC5 (!a->current || a->indx == a->current->indx);
  return;
}