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
struct attr_desc {char const* name; scalar_t__ is_numeric; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3 (struct attr_desc *attr, const char *s)
{
  if (attr->is_numeric)
    {
      int num = FUNC0 (s);

      FUNC1 ("%d", num);

      if (num > 9 || num < 0)
	FUNC1 (" /* 0x%x */", num);
    }
  else
    {
      FUNC2 (attr->name);
      FUNC1 ("_");
      FUNC2 (s);
    }
}