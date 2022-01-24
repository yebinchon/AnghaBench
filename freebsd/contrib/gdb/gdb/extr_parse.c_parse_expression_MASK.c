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
struct expression {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct expression* FUNC1 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct expression *
FUNC2 (char *string)
{
  struct expression *exp;
  exp = FUNC1 (&string, 0, 0);
  if (*string)
    FUNC0 ("Junk after end of expression.");
  return exp;
}