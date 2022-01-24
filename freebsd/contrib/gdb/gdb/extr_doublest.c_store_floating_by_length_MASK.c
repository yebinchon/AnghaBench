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
 int /*<<< orphan*/  FUNC0 (struct floatformat const*,int /*<<< orphan*/ *,void*) ; 
 struct floatformat* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void
FUNC4 (void *addr, int len, DOUBLEST val)
{
  const struct floatformat *fmt = FUNC1 (len);

  if (fmt == NULL)
    {
      FUNC3 ("Can't store a floating-point number of %d bytes.", len);
      FUNC2 (addr, 0, len);
      return;
    }

  FUNC0 (fmt, &val, addr);
}