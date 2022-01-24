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
typedef  int /*<<< orphan*/  common_header_type ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned short
FUNC1 (common_header_type *ieee)
{
  unsigned char c1 = FUNC0 (ieee);
  unsigned char c2 = FUNC0 (ieee);

  return (c1 << 8) | c2;
}