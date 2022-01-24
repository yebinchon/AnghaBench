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
struct floatformat {int dummy; } ;
typedef  int /*<<< orphan*/  DOUBLEST ;

/* Variables and functions */
 int /*<<< orphan*/  NAN ; 
 struct floatformat* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct floatformat const*,void const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static DOUBLEST
FUNC3 (const void *addr, int len)
{
  const struct floatformat *fmt = FUNC0 (len);
  DOUBLEST val;

  if (fmt == NULL)
    {
      FUNC2 ("Can't extract a floating-point number of %d bytes.", len);
      return NAN;
    }

  FUNC1 (fmt, addr, &val);
  return val;
}