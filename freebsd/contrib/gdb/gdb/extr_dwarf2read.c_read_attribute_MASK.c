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
struct dwarf2_cu {int dummy; } ;
struct attribute {int /*<<< orphan*/  name; } ;
struct attr_abbrev {int /*<<< orphan*/  form; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 char* FUNC0 (struct attribute*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,struct dwarf2_cu*) ; 

__attribute__((used)) static char *
FUNC1 (struct attribute *attr, struct attr_abbrev *abbrev,
		bfd *abfd, char *info_ptr, struct dwarf2_cu *cu)
{
  attr->name = abbrev->name;
  return FUNC0 (attr, abbrev->form, abfd, info_ptr, cu);
}