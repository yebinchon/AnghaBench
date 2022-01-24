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
struct die_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct die_info* FUNC1 (char*,int /*<<< orphan*/ *,struct dwarf2_cu*,char**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct die_info *
FUNC2 (char *info_ptr, bfd *abfd, struct dwarf2_cu *cu)
{
  /* Reset die reference table; we are
     building new ones now.  */
  FUNC0 ();

  return FUNC1 (info_ptr, abfd, cu, &info_ptr, NULL);
}