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
struct floatformat {int /*<<< orphan*/  sign_start; int /*<<< orphan*/  totalsize; int /*<<< orphan*/  byteorder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC2 (const struct floatformat *fmt, char *val)
{
  unsigned char *uval = (unsigned char *) val;
  FUNC0 (fmt != NULL);
  return FUNC1 (uval, fmt->byteorder, fmt->totalsize, fmt->sign_start, 1);
}