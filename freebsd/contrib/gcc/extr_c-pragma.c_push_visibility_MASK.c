#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int inpragma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VISIBILITY_DEFAULT ; 
 int /*<<< orphan*/  VISIBILITY_HIDDEN ; 
 int /*<<< orphan*/  VISIBILITY_INTERNAL ; 
 int /*<<< orphan*/  VISIBILITY_PROTECTED ; 
 int /*<<< orphan*/  default_visibility ; 
 int /*<<< orphan*/  heap ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  visibility ; 
 TYPE_1__ visibility_options ; 
 int /*<<< orphan*/  visstack ; 

void
FUNC3 (const char *str)
{
  FUNC1 (visibility, heap, visstack,
		 default_visibility);
  if (!FUNC2 (str, "default"))
    default_visibility = VISIBILITY_DEFAULT;
  else if (!FUNC2 (str, "internal"))
    default_visibility = VISIBILITY_INTERNAL;
  else if (!FUNC2 (str, "hidden"))
    default_visibility = VISIBILITY_HIDDEN;
  else if (!FUNC2 (str, "protected"))
    default_visibility = VISIBILITY_PROTECTED;
  else
    FUNC0 ("#pragma GCC visibility push() must specify default, internal, hidden or protected");
  visibility_options.inpragma = 1;
}