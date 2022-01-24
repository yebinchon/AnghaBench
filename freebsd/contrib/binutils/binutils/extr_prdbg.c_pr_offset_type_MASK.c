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
struct pr_handle {int dummy; } ;
typedef  int bfd_boolean ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (struct pr_handle*,char*) ; 
 char* FUNC1 (struct pr_handle*) ; 
 scalar_t__ FUNC2 (struct pr_handle*,char*) ; 
 scalar_t__ FUNC3 (struct pr_handle*,char*) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (void *p)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *t;

  if (! FUNC3 (info, ""))
    return FALSE;

  t = FUNC1 (info);
  if (t == NULL)
    return FALSE;

  return (FUNC3 (info, "")
	  && FUNC2 (info, " ")
	  && FUNC2 (info, t)
	  && FUNC0 (info, "::|"));
}