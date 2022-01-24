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
struct alphacoff_dynsecinfo {TYPE_1__* got_sect; TYPE_1__* dyninfo_sect; TYPE_1__* str_sect; TYPE_1__* sym_sect; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC1 (bfd *ignore_abfd, asection *sectp, void *sip)
{
  struct alphacoff_dynsecinfo *si;

  si = (struct alphacoff_dynsecinfo *) sip;

  if (FUNC0 (sectp->name, ".dynsym"))
    {
      si->sym_sect = sectp;
    }
  else if (FUNC0 (sectp->name, ".dynstr"))
    {
      si->str_sect = sectp;
    }
  else if (FUNC0 (sectp->name, ".dynamic"))
    {
      si->dyninfo_sect = sectp;
    }
  else if (FUNC0 (sectp->name, ".got"))
    {
      si->got_sect = sectp;
    }
}