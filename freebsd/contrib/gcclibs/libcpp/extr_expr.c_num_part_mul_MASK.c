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
typedef  int cpp_num_part ;
struct TYPE_3__ {int low; int high; int unsignedp; int overflow; } ;
typedef  TYPE_1__ cpp_num ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int PART_PRECISION ; 

__attribute__((used)) static cpp_num
FUNC2 (cpp_num_part lhs, cpp_num_part rhs)
{
  cpp_num result;
  cpp_num_part middle[2], temp;

  result.low = FUNC1 (lhs) * FUNC1 (rhs);
  result.high = FUNC0 (lhs) * FUNC0 (rhs);

  middle[0] = FUNC1 (lhs) * FUNC0 (rhs);
  middle[1] = FUNC0 (lhs) * FUNC1 (rhs);

  temp = result.low;
  result.low += FUNC1 (middle[0]) << (PART_PRECISION / 2);
  if (result.low < temp)
    result.high++;

  temp = result.low;
  result.low += FUNC1 (middle[1]) << (PART_PRECISION / 2);
  if (result.low < temp)
    result.high++;

  result.high += FUNC0 (middle[0]);
  result.high += FUNC0 (middle[1]);
  result.unsignedp = true;
  result.overflow = false;

  return result;
}