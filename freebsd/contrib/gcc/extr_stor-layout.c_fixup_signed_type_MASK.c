#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int HOST_BITS_PER_WIDE_INT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

void
FUNC3 (tree type)
{
  int precision = FUNC0 (type);

  /* We can not represent properly constants greater then
     2 * HOST_BITS_PER_WIDE_INT, still we need the types
     as they are used by i386 vector extensions and friends.  */
  if (precision > HOST_BITS_PER_WIDE_INT * 2)
    precision = HOST_BITS_PER_WIDE_INT * 2;

  FUNC2 (type, precision,
					    /*is_unsigned=*/false);

  /* Lay out the type: set its alignment, size, etc.  */
  FUNC1 (type);
}