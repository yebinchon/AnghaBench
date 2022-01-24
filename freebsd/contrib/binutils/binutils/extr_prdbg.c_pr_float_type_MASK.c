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
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (void *p, unsigned int size)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char ab[10];

  if (size == 4)
    return FUNC0 (info, "float");
  else if (size == 8)
    return FUNC0 (info, "double");

  FUNC1 (ab, "float%d", size * 8);
  return FUNC0 (info, ab);
}