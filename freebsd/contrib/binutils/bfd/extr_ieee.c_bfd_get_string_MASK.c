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
 char FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1 (common_header_type *ieee, char *string, size_t length)
{
  size_t i;

  for (i = 0; i < length; i++)
    string[i] = FUNC0 (ieee);
}