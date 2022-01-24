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
struct pr_handle {scalar_t__ indent; int /*<<< orphan*/  f; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (void *p, const char *filename)
{
  struct pr_handle *info = (struct pr_handle *) p;

  FUNC0 (info->indent == 0);

  FUNC1 (info->f, " %s:\n", filename);

  return TRUE;
}