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
struct pr_handle {int /*<<< orphan*/  f; } ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (void *p, const char *filename, unsigned long lineno, bfd_vma addr)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char ab[20];

  FUNC1 (info);
  FUNC2 (addr, ab, TRUE, TRUE);
  FUNC0 (info->f, "/* file %s line %lu addr %s */\n", filename, lineno, ab);

  return TRUE;
}