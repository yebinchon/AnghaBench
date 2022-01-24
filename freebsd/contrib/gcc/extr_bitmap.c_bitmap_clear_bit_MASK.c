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
struct TYPE_5__ {unsigned int* bits; } ;
typedef  TYPE_1__ bitmap_element ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  unsigned int BITMAP_WORD ;

/* Variables and functions */
 int BITMAP_ELEMENT_WORDS ; 
 int BITMAP_WORD_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 

void
FUNC3 (bitmap head, int bit)
{
  bitmap_element *ptr = FUNC2 (head, bit);

  if (ptr != 0)
    {
      unsigned bit_num  = bit % BITMAP_WORD_BITS;
      unsigned word_num = bit / BITMAP_WORD_BITS % BITMAP_ELEMENT_WORDS;
      ptr->bits[word_num] &= ~ (((BITMAP_WORD) 1) << bit_num);

      /* If we cleared the entire word, free up the element.  */
      if (FUNC1 (ptr))
	FUNC0 (head, ptr);
    }
}