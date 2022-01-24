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
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int,scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3 (tree object1, bool is_ptr1,
                          tree object2, bool is_ptr2,
                          tree *alias_site,
                          tree *deref_site1,
                          tree *deref_site2)
{
  if (object1 && object2)
    {
      if (!*alias_site || !FUNC0 (*alias_site))
	*alias_site = FUNC1 (object1, is_ptr1, object2, is_ptr2);

      if (!*deref_site1 || !FUNC0 (*deref_site1))
	*deref_site1 = FUNC2 (object1, is_ptr1);

      if (!*deref_site2 || !FUNC0 (*deref_site2))
	*deref_site2 = FUNC2 (object2, is_ptr2);
    }

  /* If we could not find the alias site, set it to one of the dereference
     sites, if available.  */
  if (!*alias_site)
    {
      if (*deref_site1)
	*alias_site = *deref_site1;
      else if (*deref_site2)
	*alias_site = *deref_site2;
    }

  /* If we could not find the dereference sites, set them to the alias site,
     if known.  */
  if (!*deref_site1 && *alias_site)
    *deref_site1 = *alias_site;
  if (!*deref_site2 && *alias_site)
    *deref_site2 = *alias_site;
}