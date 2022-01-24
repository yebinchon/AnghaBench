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
struct pr_handle {int /*<<< orphan*/ * stack; } ;
typedef  int /*<<< orphan*/  bfd_signed_vma ;
typedef  int bfd_boolean ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pr_handle*,char*) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (void *p, bfd_signed_vma lower, bfd_signed_vma upper)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char abl[20], abu[20];

  FUNC1 (info->stack != NULL);

  if (! FUNC4 (info, ""))
    return FALSE;

  FUNC3 (lower, abl, FALSE, FALSE);
  FUNC3 (upper, abu, FALSE, FALSE);

  return (FUNC2 (info, "range (")
	  && FUNC0 (info, "):")
	  && FUNC0 (info, abl)
	  && FUNC0 (info, ":")
	  && FUNC0 (info, abu));
}