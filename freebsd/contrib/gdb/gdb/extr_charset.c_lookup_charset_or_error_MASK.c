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
struct charset {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 struct charset* FUNC1 (char const*) ; 

__attribute__((used)) static struct charset *
FUNC2 (const char *name)
{
  struct charset *cs = FUNC1 (name);

  if (! cs)
    FUNC0 ("GDB doesn't know of any character set named `%s'.", name);

  return cs;
}