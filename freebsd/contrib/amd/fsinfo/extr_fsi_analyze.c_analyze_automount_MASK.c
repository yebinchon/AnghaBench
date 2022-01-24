#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dict_ent ;
struct TYPE_3__ {int /*<<< orphan*/  a_name; int /*<<< orphan*/  a_volname; int /*<<< orphan*/  a_ioloc; int /*<<< orphan*/ * a_mounted; } ;
typedef  TYPE_1__ automount ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC3(automount *ap)
{
  dict_ent *de = FUNC1(ap->a_volname);

  if (de) {
    ap->a_mounted = de;
  } else {
    if (FUNC0(ap->a_volname, ap->a_name))
      FUNC2(ap->a_ioloc, "unknown volname %s automounted", ap->a_volname);
    else
      FUNC2(ap->a_ioloc, "unknown volname %s automounted on %s", ap->a_volname, ap->a_name);
  }
}