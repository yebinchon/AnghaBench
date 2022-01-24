#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int overflow; size_t high; size_t low; scalar_t__ unsignedp; } ;
typedef  TYPE_1__ cpp_num ;

/* Variables and functions */
 size_t PART_PRECISION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC1 (TYPE_1__,size_t,size_t) ; 
 TYPE_1__ FUNC2 (TYPE_1__,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 

__attribute__((used)) static cpp_num
FUNC4 (cpp_num num, size_t precision, size_t n)
{
  if (n >= precision)
    {
      num.overflow = !num.unsignedp && !FUNC3 (num);
      num.high = num.low = 0;
    }
  else
    {
      cpp_num orig, maybe_orig;
      size_t m = n;

      orig = num;
      if (m >= PART_PRECISION)
	{
	  m -= PART_PRECISION;
	  num.high = num.low;
	  num.low = 0;
	}
      if (m)
	{
	  num.high = (num.high << m) | (num.low >> (PART_PRECISION - m));
	  num.low <<= m;
	}
      num = FUNC2 (num, precision);

      if (num.unsignedp)
	num.overflow = false;
      else
	{
	  maybe_orig = FUNC1 (num, precision, n);
	  num.overflow = !FUNC0 (orig, maybe_orig);
	}
    }

  return num;
}