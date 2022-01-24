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
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static asection *
FUNC2 (asection *sec, asection *group,
		    struct bfd_link_info *info)
{
  asection *first = FUNC1 (group);
  asection *s = first;

  while (s != NULL)
    {
      if (FUNC0 (s, sec, info))
	return s;

      s = FUNC1 (s);
      if (s == first)
	break;
    }

  return NULL;
}