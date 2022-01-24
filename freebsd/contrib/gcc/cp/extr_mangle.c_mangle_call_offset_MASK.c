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
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const) ; 

__attribute__((used)) static void
FUNC2 (const tree fixed_offset, const tree virtual_offset)
{
  FUNC0 (virtual_offset ? 'v' : 'h');

  /* For either flavor, write the fixed offset.  */
  FUNC1 (fixed_offset);
  FUNC0 ('_');

  /* For a virtual thunk, add the virtual offset.  */
  if (virtual_offset)
    {
      FUNC1 (virtual_offset);
      FUNC0 ('_');
    }
}