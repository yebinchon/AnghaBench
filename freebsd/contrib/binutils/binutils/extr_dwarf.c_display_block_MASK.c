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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 

__attribute__((used)) static unsigned char *
FUNC3 (unsigned char *data, unsigned long length)
{
  FUNC2 (FUNC0(" %lu byte block: "), length);

  while (length --)
    FUNC2 ("%lx ", (unsigned long) FUNC1 (data++, 1));

  return data;
}